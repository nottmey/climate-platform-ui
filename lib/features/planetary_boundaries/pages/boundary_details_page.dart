import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/common/widgets/app_card.dart';
import 'package:climate_platform_ui/common/widgets/app_header_sliver.dart';
import 'package:climate_platform_ui/common/widgets/app_page_widget.dart';
import 'package:climate_platform_ui/common/widgets/app_text.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/providers/planetary_boundary_family.dart';

class BoundaryDetailsPage extends AppPageWidget {
  final String id;

  const BoundaryDetailsPage({
    super.key,
    required this.id,
  });

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    final provider = planetaryBoundaryFamily(id);
    final asyncValue = ref.watch(provider).value;
    if (asyncValue.isLoading || asyncValue.hasError) {
      // TODO loading state & error state
      return [];
    }
    final value = asyncValue.value!;

    final controller = useTextEditingController(text: value.description);
    ref.listen(provider, (previous, next) {
      // TODO solve conflict when user already updated local value
      final externallyUpdatedDescription = next.value.asData?.value.description;
      if (externallyUpdatedDescription != null) {
        controller.text = externallyUpdatedDescription;
      }
    });

    return [
      AppHeaderSliver(title: value.name ?? '...'),

      // TODO make this a single card functionality
      SliverToBoxAdapter(
        child: AppCard(
          preset: AppCardPreset.filled,
          builder: (_) {
            return AppText(
              value: value.description ?? '<no description>',
            );
          },
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: controller,
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(provider.notifier).createOrMerge(
                        PlanetaryBoundaryInput(description: controller.text),
                      );
                },
                child: const AppText(value: 'Save'),
              )
            ],
          ),
        ),
      )
    ];
  }
}
