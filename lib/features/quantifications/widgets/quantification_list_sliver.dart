import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/api/utils/execute.dart';
import 'package:climate_platform_ui/common/providers/entity_cache_provider.dart';
import 'package:climate_platform_ui/common/widgets/app_paged_sliver_list.dart';
import 'package:climate_platform_ui/common/widgets/app_widget.dart';
import 'package:climate_platform_ui/features/quantifications/providers/quantification_creations_provider.dart';
import 'package:climate_platform_ui/features/quantifications/widgets/quantification_card.dart';

class QuantificationListSliver extends AppWidget {
  final String parentBoundaryId;

  const QuantificationListSliver({super.key, required this.parentBoundaryId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppPagedSliverList<String>(
      creationsProvider: quantificationCreationsProvider,
      fetchPage: (pageKey, pageSize) async {
        // TODO use parentBoundaryId for query, via getPlanetaryBoundary -> quantifications(page)
        final data = await execute(
          GetQuantificationPageQuery(
            variables: GetQuantificationPageArguments(
              page: pageKey,
              size: pageSize,
            ),
          ),
        );
        final page = data.listQuantification;
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
      itemBuilder: (BuildContext context, item, int index) {
        return QuantificationCard.display(displayId: item);
      },
    );
  }
}
