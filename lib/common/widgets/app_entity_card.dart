import 'dart:async';

import 'package:climate_platform_ui/common/models/entity.dart';
import 'package:climate_platform_ui/common/models/entity_state.dart';
import 'package:climate_platform_ui/common/notifiers/entity_state_notifier.dart';
import 'package:climate_platform_ui/common/widgets/app_card.dart';
import 'package:climate_platform_ui/common/widgets/app_widget.dart';
import 'package:climate_platform_ui/features/theming/utils/context_theme_extension.dart';
import 'package:climate_platform_ui/features/theming/utils/spacing_utils_extension.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

enum _AppEntityCardDisplayState {
  offerCreation,
  editing,
  display,
}

enum _AppEntityCardMode {
  createAndReset,
  display,
}

abstract class AppEntityCard<T extends Entity> extends AppWidget {
  final _AppEntityCardMode _mode;

  final AutoDisposeStateNotifierProvider<EntityStateNotifier<T>, EntityState<T>>
      Function()? providerConstructor;
  final StreamSink<
      AutoDisposeStateNotifierProvider<EntityStateNotifier<T>,
          EntityState<T>>>? creationsSink;

  final AutoDisposeStateNotifierProvider<EntityStateNotifier<T>,
      EntityState<T>>? provider;

  const AppEntityCard.creation({
    super.key,
    required AutoDisposeStateNotifierProvider<EntityStateNotifier<T>,
                EntityState<T>>
            Function()
        this.providerConstructor,
    required StreamSink<
            AutoDisposeStateNotifierProvider<EntityStateNotifier<T>,
                EntityState<T>>>
        this.creationsSink,
  })  : _mode = _AppEntityCardMode.createAndReset,
        provider = null;

  const AppEntityCard.display({
    super.key,
    required AutoDisposeStateNotifierProvider<EntityStateNotifier<T>,
            EntityState<T>>
        this.provider,
  })  : _mode = _AppEntityCardMode.display,
        providerConstructor = null,
        creationsSink = null;

  void onTab(
    BuildContext context,
    AutoDisposeStateNotifierProvider<EntityStateNotifier<T>, EntityState<T>>
        provider,
    String? id,
  );

  FormGroup createFormControls(T value);

  T mergeFormControlsWithValue(FormGroup form, T value);

  Widget buildForm(BuildContext context, void Function() save);

  Widget buildDisplay(
    BuildContext context,
    EntityState<T> state,
    double safeIconButtonPadding,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentProviderState = useState(
      this.provider ?? providerConstructor!(),
    );
    final currentProvider = currentProviderState.value;

    final entityState = ref.watch(currentProviderState.value);
    final value = entityState.value;

    final displayState = useState<_AppEntityCardDisplayState>(
      _mode == _AppEntityCardMode.createAndReset
          ? _AppEntityCardDisplayState.offerCreation
          : _AppEntityCardDisplayState.display,
    );
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
              final newValue = mergeFormControlsWithValue(form, value);
              ref.read(currentProvider.notifier).update(newValue);

              if (creationsSink != null) {
                creationsSink!.add(currentProvider);
              }

              if (providerConstructor != null) {
                currentProviderState.value = providerConstructor!();
              }

              if (_mode == _AppEntityCardMode.createAndReset) {
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
                        if (_mode == _AppEntityCardMode.createAndReset) {
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
            : () {
                onTab(
                  context,
                  currentProvider,
                  ref.read(currentProvider).value.id,
                );
              },
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
                    ref.read(currentProvider.notifier).delete();
                  },
                ),
              ],
        builder: (safeIconButtonPadding) =>
            buildDisplay(context, entityState, safeIconButtonPadding),
      );
    }
  }
}
