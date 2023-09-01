import 'package:climate/api/api.graphql.dart';
import 'package:climate/common/models/entity_state.dart';
import 'package:climate/common/widgets/app_entity_card.dart';
import 'package:climate/common/widgets/app_error.dart';
import 'package:climate/common/widgets/app_loading.dart';
import 'package:climate/common/widgets/app_text.dart';
import 'package:climate/common/widgets/app_widget.dart';
import 'package:climate/features/planetary_boundaries/providers/planetary_boundary_creation_family.dart';
import 'package:climate/features/planetary_boundaries/providers/planetary_boundary_creations_sink.dart';
import 'package:climate/features/planetary_boundaries/providers/planetary_boundary_family.dart';
import 'package:climate/features/theming/models/text_style_preset.dart';
import 'package:climate/router.dart';
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
    context.goToBoundaryDetails(id);
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
  PlanetaryBoundaryInput createInputFromForm(String id, FormGroup form) {
    return PlanetaryBoundaryInput(id: id, name: form.value['name'] as String?);
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
            error: AppError.new,
            loading: AppLoading.new,
          ),
        ),
      ],
    );
  }
}
