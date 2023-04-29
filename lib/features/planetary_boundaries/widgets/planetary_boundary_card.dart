import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/common/models/entity_state.dart';
import 'package:climate_platform_ui/common/widgets/app_entity_card.dart';
import 'package:climate_platform_ui/common/widgets/app_text.dart';
import 'package:climate_platform_ui/common/widgets/app_widget.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/providers/planetary_boundary_creation_family.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/providers/planetary_boundary_creations_provider.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/providers/planetary_boundary_family.dart';
import 'package:climate_platform_ui/features/theming/models/text_style_preset.dart';
import 'package:climate_platform_ui/router.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';

class PlanetaryBoundaryCard
    extends AppEntityCard<PlanetaryBoundaryMixin, PlanetaryBoundaryInput> {
  PlanetaryBoundaryCard.creation({super.key})
      : super.creation(
          family: planetaryBoundaryCreationFamily,
          creationsSink: planetaryBoundaryCreationsSink,
        );

  PlanetaryBoundaryCard.display({super.key, required super.displayId})
      : super.display(family: planetaryBoundaryFamily);

  @override
  void onTab(BuildContext context, String id) {
    context.go(overviewDetailsPath(id));
  }

  @override
  FormGroup createFormControls(PlanetaryBoundaryMixin? value) {
    return FormGroup({
      'name': FormControl<String>(
        value: value?.name,
        validators: [Validators.required],
      )
    });
  }

  @override
  PlanetaryBoundaryInput createInputFromForm(FormGroup form) {
    return PlanetaryBoundaryInput(name: form.value['name'] as String?);
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
    EntityState<PlanetaryBoundaryMixin> state,
    double safeIconButtonPadding,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: safeIconButtonPadding),
          child: state.asyncEntity.when(
            data: (value) {
              return AppText(
                value: value.name ?? '',
                looksDisabled: state.isDeleted,
                preset: TextStylePreset.titleLarge,
              );
            },
            error: (e, s) => const Icon(Icons.error),
            loading: CircularProgressIndicator.new,
          ),
        ),
      ],
    );
  }
}
