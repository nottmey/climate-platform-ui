import 'package:climate_platform_ui/common/widgets/app_entity_card.dart';
import 'package:climate_platform_ui/common/widgets/app_header_sliver.dart';
import 'package:climate_platform_ui/common/widgets/app_page_widget.dart';
import 'package:climate_platform_ui/common/widgets/app_text.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/models/planetary_boundary.dart';
import 'package:climate_platform_ui/features/theming/models/text_style_preset.dart';
import 'package:climate_platform_ui/router.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';

class PlanetOverviewPage extends AppPageWidget {
  const PlanetOverviewPage({super.key});

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    return [
      const AppHeaderSliver(title: 'Planetary boundaries'),
      SliverToBoxAdapter(
        child: AppEntityCard<PlanetaryBoundary>(
          onSave: (form) {
            final value = PlanetaryBoundary();
            value.name = form.value['name'] as String?;
            // TODO save to database
            return value;
          },
          onTab: (data) {
            // TODO loading state until save is complete, else we don't have an id to navigate to
            context.go(overviewDetailsPath);
          },
          formControlBuilder: (data) {
            return FormGroup({
              'name': FormControl<String>(
                value: data?.name,
                validators: [Validators.required],
              )
            });
          },
          formBuilder: (save) => [
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
            )
          ],
          dataBuilder: (data) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  value: data.name ?? '',
                  preset: TextStylePreset.titleLarge,
                ),
              ],
            );
          },
        ),
      ),
    ];
  }
}
