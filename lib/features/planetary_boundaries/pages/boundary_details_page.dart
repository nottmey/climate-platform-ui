import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/common/widgets/app_description_block.dart';
import 'package:climate_platform_ui/common/widgets/app_header_sliver.dart';
import 'package:climate_platform_ui/common/widgets/app_page_widget.dart';
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

    return [
      AppHeaderSliver(
        provider: provider.select(
          (state) => state.value.whenData((value) => value.name),
        ),
      ),
      SliverToBoxAdapter(
        child: AppDescriptionBlock(
          provider: planetaryBoundaryFamily(id).select(
            (state) => state.value.whenData((value) => value.description),
          ),
          onSave: (value) => ref
              .read(provider.notifier)
              .createOrMerge(PlanetaryBoundaryInput(description: value)),
        ),
      ),
    ];
  }
}
