import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/api/utils/execute.dart';
import 'package:climate_platform_ui/common/widgets/app_paged_sliver_list.dart';
import 'package:climate_platform_ui/common/widgets/app_widget.dart';
import 'package:climate_platform_ui/features/database_browser/providers/selected_database_provider.dart';
import 'package:climate_platform_ui/features/database_browser/widgets/entity_details_segment.dart';

class DatabaseEntityListSliver extends AppWidget {
  final List<String>? attributes;

  const DatabaseEntityListSliver({super.key, this.attributes});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDatabase = ref.watch(selectedDatabaseProvider);
    if (selectedDatabase == null) {
      return const SliverFillRemaining(
        child: Center(child: CircularProgressIndicator()),
      );
    }

    return AppPagedSliverList<EntityMixin>(
      resetProvider: selectedDatabaseProvider,
      fetchPage: (pageKey, pageSize) async {
        final data = await execute(
          GetEntityPageQuery(
            variables: GetEntityPageArguments(
              database: selectedDatabase,
              page: pageKey,
              size: pageSize,
              filter: EntityFilter(attributes: attributes),
            ),
          ),
        );
        final page = data.list.page;
        return AppPagedFetchResult(
          newItems: page.entities,
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
