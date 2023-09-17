import 'package:climate/api/api.graphql.dart';
import 'package:climate/api/utils/execute.dart';
import 'package:climate/common/providers/entity_cache_provider.dart';
import 'package:climate/common/widgets/app_paged_sliver_list.dart';
import 'package:climate/common/widgets/app_widget.dart';
import 'package:climate/features/quantifications/providers/quantification_creations_provider.dart';
import 'package:climate/features/quantifications/widgets/quantification_card.dart';

class QuantificationListSliver extends AppWidget {
  final String parentBoundaryId;

  const QuantificationListSliver({super.key, required this.parentBoundaryId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppPagedSliverList<String>(
      creationsProvider: quantificationCreationsProvider,
      fetchPage: (pageKey, pageSize) async {
        // TODO simplify, paged list not needed
        final data = await execute(
          GetQuantificationPageQuery(
            variables: GetQuantificationPageArguments(
              parentBoundaryId: parentBoundaryId,
            ),
          ),
        );
        final values = data.getPlanetaryBoundary?.quantifications ??
            <GetQuantificationPage$Query$PlanetaryBoundary$Quantification>[];
        for (final value in values) {
          // TODO not actually synced; items which are not directly mounted don't have a subscription running
          ref.read(entityCacheProvider.notifier).setSynced(value.id, value);
        }
        return AppPagedFetchResult(
          newItems: values.map((value) => value.id).toList(),
        );
      },
      itemBuilder: (BuildContext context, item, int index) {
        return QuantificationCard.display(
          displayId: item,
          parentBoundaryId: parentBoundaryId,
        );
      },
    );
  }
}
