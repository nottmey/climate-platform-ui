import 'package:climate/api/api.graphql.dart';
import 'package:climate/api/utils/execute.dart';
import 'package:climate/common/providers/entity_cache_provider.dart';
import 'package:climate/common/widgets/app_paged_sliver_list.dart';
import 'package:climate/common/widgets/app_widget.dart';
import 'package:climate/features/planetary_boundaries/providers/planetary_boundary_creations_provider.dart';
import 'package:climate/features/planetary_boundaries/widgets/planetary_boundary_card.dart';

class PlanetaryBoundaryListSliver extends AppWidget {
  const PlanetaryBoundaryListSliver({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppPagedSliverList<String>(
      // TODO sort out time basis: only show consistent list of specific t and append all newer creations from ws
      creationsProvider: planetaryBoundaryCreationsProvider,
      fetchPage: (pageKey, pageSize) async {
        final data = await execute(
          GetPlanetaryBoundaryPageQuery(
            variables: GetPlanetaryBoundaryPageArguments(
              page: pageKey,
              size: pageSize,
            ),
          ),
        );
        final page = data.listPlanetaryBoundary;
        for (final value in page.values) {
          // TODO not actually synced; items which are not directly mounted don't have a subscription running
          ref.read(entityCacheProvider.notifier).setSynced(value.id, value);
        }
        return AppPagedFetchResult(
          newItems: page.values.map((value) => value.id).toList(),
          nextPageKey: page.info.next,
          nextPageSize: page.info.size,
        );
      },
      itemBuilder: (context, item, index) {
        return PlanetaryBoundaryCard.display(displayId: item);
      },
    );
  }
}
