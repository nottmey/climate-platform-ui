import 'package:climate_platform_ui/common/models/entity_state.dart';
import 'package:climate_platform_ui/common/notifiers/entity_state_notifier.dart';
import 'package:climate_platform_ui/common/providers/session_provider.dart';
import 'package:climate_platform_ui/common/widgets/app_entity_card.dart';
import 'package:climate_platform_ui/common/widgets/app_text.dart';
import 'package:climate_platform_ui/common/widgets/app_widget.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/models/boundary_details_page_extra.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/models/planetary_boundary.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/notifiers/planetary_boundary_state_notifier.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/providers/planetary_boundary_creations_provider.dart';
import 'package:climate_platform_ui/features/theming/models/text_style_preset.dart';
import 'package:climate_platform_ui/router.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

class PlanetaryBoundaryCard extends AppEntityCard<PlanetaryBoundary> {
  PlanetaryBoundaryCard.creation({super.key})
      : super.creation(
          providerConstructor: () => AutoDisposeStateNotifierProvider(
            (ref) {
              final session = ref.read(sessionProvider);
              return PlanetaryBoundaryStateNotifier(session: session);
            },
          ),
          creationsSink: planetaryBoundaryCreationsSink,
        );

  const PlanetaryBoundaryCard.display({super.key, required super.provider})
      : super.display();

  @override
  void onTab(
    BuildContext context,
    AutoDisposeStateNotifierProvider<EntityStateNotifier<PlanetaryBoundary>,
            EntityState<PlanetaryBoundary>>
        provider,
    String? id,
  ) {
    context.go(
      overviewDetailsPath(id),
      extra: BoundaryDetailsPageExtra(provider: provider),
    );
  }

  @override
  FormGroup createFormControls(PlanetaryBoundary value) {
    return FormGroup({
      'name': FormControl<String>(
        value: value.name,
        validators: [Validators.required],
      )
    });
  }

  @override
  PlanetaryBoundary mergeFormControlsWithValue(
    FormGroup form,
    PlanetaryBoundary value,
  ) {
    final newValue = value.copy();
    newValue.name = form.value['name'] as String?;
    return newValue;
  }

  @override
  Widget buildForm(BuildContext context, void Function() save) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ReactiveTextField<String>(
          formControlName: 'name',
          decoration: const InputDecoration(
            labelText: 'Name',
            border: OutlineInputBorder(gapPadding: 4),
          ),
          validationMessages: {
            ValidationMessage.required: (_) => 'Name must not be empty',
          },
          onSubmitted: (_) => save(),
        ),
      ],
    );
  }

  @override
  Widget buildDisplay(
    BuildContext context,
    EntityState<PlanetaryBoundary> state,
    double safeIconButtonPadding,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: safeIconButtonPadding),
          child: AppText(
            value: state.value.name ?? '',
            looksDisabled: state.isDeleted,
            preset: TextStylePreset.titleLarge,
          ),
        ),
      ],
    );
  }
}
