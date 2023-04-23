import 'dart:async';

import 'package:climate_platform_ui/common/models/entity_state.dart';
import 'package:climate_platform_ui/common/notifiers/entity_state_notifier.dart';
import 'package:climate_platform_ui/common/widgets/app_card.dart';
import 'package:climate_platform_ui/common/widgets/app_widget.dart';
import 'package:climate_platform_ui/features/theming/utils/context_theme_extension.dart';
import 'package:climate_platform_ui/features/theming/utils/spacing_utils_extension.dart';
import 'package:gql_websocket_link/gql_websocket_link.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

enum _AppEntityCardDisplayState {
  offerCreation,
  editing,
  display,
}

abstract class AppEntityCard<T, I> extends AppWidget {
  final AutoDisposeStateNotifierProviderFamily<EntityStateNotifier<T, I>,
      EntityState<T>, String> family;

  final _AppEntityCardDisplayState _startState;

  final String? displayId;

  final StreamSink<String>? creationsSink;

  const AppEntityCard.creation({
    super.key,
    required this.family,
    required StreamSink<String> this.creationsSink,
  })  : _startState = _AppEntityCardDisplayState.offerCreation,
        displayId = null;

  const AppEntityCard.display({
    super.key,
    required this.family,
    required String this.displayId,
  })  : _startState = _AppEntityCardDisplayState.display,
        creationsSink = null;

  void onTab(BuildContext context, String id);

  FormGroup createFormControls(T? value);

  I createInputFromForm(FormGroup form);

  Widget buildForm(BuildContext context, void Function() save);

  Widget buildDisplay(
    BuildContext context,
    EntityState<T> state,
    double safeIconButtonPadding,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerState = useState(family(displayId ?? uuid.v4()));
    final provider = providerState.value;

    final entityState = ref.watch(provider);
    final asyncValue = entityState.inCreation ? null : entityState.value;
    // TODO loading state, when not creating
    final value = asyncValue?.asData?.value;

    final displayState = useState(_startState);
    final displayStateValue = displayState.value;

    final theme = context.theme;
    if (displayStateValue == _AppEntityCardDisplayState.offerCreation) {
      return AppCard(
        preset: AppCardPreset.outlined,
        onTab: () {
          displayState.value = _AppEntityCardDisplayState.editing;
        },
        builder: (_) => const Center(
          child: Icon(Icons.add),
        ),
      );
    } else if (displayStateValue == _AppEntityCardDisplayState.editing) {
      return AppCard(
        preset: AppCardPreset.elevated,
        builder: (_) => ReactiveFormBuilder(
          form: () => createFormControls(value),
          builder: (context, form, child) {
            void save() {
              ref
                  .read(provider.notifier)
                  .createOrMerge(createInputFromForm(form));

              if (creationsSink != null) {
                // value already cached
                creationsSink!.add(ref.read(provider.notifier).id);

                providerState.value = family(uuid.v4());
                displayState.value = _AppEntityCardDisplayState.offerCreation;
              } else {
                displayState.value = _AppEntityCardDisplayState.display;
              }
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                buildForm(context, save),
                theme.spacedSizedBox(height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (displayId == null) {
                          displayState.value =
                              _AppEntityCardDisplayState.offerCreation;
                        } else {
                          displayState.value =
                              _AppEntityCardDisplayState.display;
                        }
                      },
                      child: const Text('Cancel'),
                    ),
                    ReactiveFormConsumer(
                      builder: (context, form, child) {
                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: theme.colorScheme.onPrimary,
                            backgroundColor: theme.colorScheme.primary,
                          ),
                          onPressed: form.invalid ? null : save,
                          child: const Text('Submit'),
                        );
                      },
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      );
    } else {
      return AppCard(
        disabled: entityState.isDeleted,
        preset: AppCardPreset.elevated,
        onTab: entityState.isDeleted
            ? null
            : () => onTab(context, ref.read(provider.notifier).id),
        actions: entityState.isDeleted
            ? null
            : [
                AppCardAction(
                  label: 'Edit',
                  onSelected: () {
                    displayState.value = _AppEntityCardDisplayState.editing;
                  },
                ),
                AppCardAction(
                  label: 'Delete',
                  color: theme.colorScheme.error,
                  onSelected: () {
                    ref.read(provider.notifier).delete();
                  },
                ),
              ],
        builder: (safeIconButtonPadding) =>
            buildDisplay(context, entityState, safeIconButtonPadding),
      );
    }
  }
}
