import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/api/utils/execute.dart';
import 'package:climate_platform_ui/common/models/entity_state.dart';
import 'package:climate_platform_ui/common/notifiers/entity_state_notifier.dart';
import 'package:climate_platform_ui/common/widgets/app_paged_sliver_list.dart';
import 'package:climate_platform_ui/common/widgets/app_widget.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/models/planetary_boundary.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/providers/planetary_boundary_creations_provider.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/providers/planetary_boundary_provider_family.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/widgets/planetary_boundary_card.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlanetaryBoundaryListSliver extends AppWidget {
  const PlanetaryBoundaryListSliver({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppPagedSliverList<
        AutoDisposeStateNotifierProvider<EntityStateNotifier<PlanetaryBoundary>,
            EntityState<PlanetaryBoundary>>>(
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
        return AppPagedFetchResult(
          newItems: page.values.map((mixin) {
            final provider = planetaryBoundaryProviderFamily(mixin.id);
            ref.read(provider.notifier).set(PlanetaryBoundary.existing(mixin));
            return provider;
          }).toList(),
          nextPageKey: page.info.next,
          nextPageSize: page.info.size,
        );
      },
      itemBuilder: (context, item, index) {
        return PlanetaryBoundaryCard.display(provider: item);
      },
    );
  }
}
