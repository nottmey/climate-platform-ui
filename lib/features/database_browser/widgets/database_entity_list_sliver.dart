import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/api/utils/execute.dart';
import 'package:climate_platform_ui/common/widgets/app_paged_sliver_list.dart';
import 'package:climate_platform_ui/common/widgets/app_widget.dart';
import 'package:climate_platform_ui/features/database_browser/widgets/entity_details_segment.dart';

class DatabaseEntityListSliver extends AppWidget {
  final List<String>? attributes;

  const DatabaseEntityListSliver({super.key, this.attributes});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppPagedSliverList<EntityMixin>(
      fetchPage: (pageKey, pageSize) async {
        final data = await execute(
          GetEntityPageQuery(
            variables: GetEntityPageArguments(
              page: pageKey,
              size: pageSize,
              filter: EntityFilter(attributes: attributes),
            ),
          ),
        );
        final page = data.listEntity;
        return AppPagedFetchResult(
          newItems: page.values,
          nextPageKey: page.info.next,
          nextPageSize: page.info.size,
        );
      },
      itemBuilder: (context, item, index) => EntityDetailsSegment(
        entity: item,
        attributes: attributes,
      ),
    );
  }
}
