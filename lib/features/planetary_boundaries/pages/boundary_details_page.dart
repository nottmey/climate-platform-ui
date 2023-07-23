import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/common/widgets/app_description_block.dart';
import 'package:climate_platform_ui/common/widgets/app_header_sliver.dart';
import 'package:climate_platform_ui/common/widgets/app_page_widget.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/providers/planetary_boundary_family.dart';
import 'package:climate_platform_ui/features/quantifications/widgets/quantification_card.dart';
import 'package:climate_platform_ui/features/quantifications/widgets/quantification_list_sliver.dart';

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
          (state) => state.asyncEntity.whenData((value) => value.name),
        ),
      ),
      SliverToBoxAdapter(
        child: AppDescriptionBlock(
          provider: planetaryBoundaryFamily(id).select(
            (state) => state.asyncEntity.whenData((value) => value.description),
          ),
          onSave: (value) => ref.read(provider.notifier).createOrMerge(
                PlanetaryBoundaryInput(id: id, description: value),
              ),
        ),
      ),
      QuantificationListSliver(parentBoundaryId: id),
      SliverToBoxAdapter(
        child: QuantificationCard.creation(),
      ),
      SliverToBoxAdapter(
        child: SizedBox(height: MediaQuery.of(context).size.height / 4),
      ),
    ];
  }
}
