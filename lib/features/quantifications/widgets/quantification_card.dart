import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/common/models/entity_state.dart';
import 'package:climate_platform_ui/common/widgets/app_entity_card.dart';
import 'package:climate_platform_ui/common/widgets/app_error.dart';
import 'package:climate_platform_ui/common/widgets/app_loading.dart';
import 'package:climate_platform_ui/common/widgets/app_page_widget.dart';
import 'package:climate_platform_ui/common/widgets/app_text.dart';
import 'package:climate_platform_ui/features/quantifications/providers/quantification_creation_family.dart';
import 'package:climate_platform_ui/features/quantifications/providers/quantification_creations_sink.dart';
import 'package:climate_platform_ui/features/quantifications/providers/quantifications_family.dart';
import 'package:climate_platform_ui/features/theming/models/text_style_preset.dart';
import 'package:climate_platform_ui/router.dart';
import 'package:reactive_forms/reactive_forms.dart';

class QuantificationCard
    extends AppEntityCard<QuantificationMixin, QuantificationInput> {
  QuantificationCard.creation({super.key})
      : super.creation(
          family: quantificationCreationFamily,
          creationsSink: quantificationCreationsSink,
        );

  QuantificationCard.display({super.key, required super.displayId})
      : super.display(family: quantificationFamily);

  @override
  void onTab(BuildContext context, String id) {
    context.goToQuantificationDetails(id);
  }

  @override
  FormGroup createFormControls(QuantificationMixin? value) {
    return FormGroup({
      'name': FormControl<String>(
        value: value?.name,
        validators: [Validators.required],
      )
    });
  }

  @override
  QuantificationInput createInputFromForm(String id, FormGroup form) {
    return QuantificationInput(id: id, name: form.value['name'] as String?);
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
    EntityState<QuantificationMixin> state,
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
        // TODO add unit description and unit abbreviation to data model, e.g.
        // const AppText(value: 'Unit: Carbon Dioxide Equivalent (CO₂-eq)')
      ],
    );
  }
}
