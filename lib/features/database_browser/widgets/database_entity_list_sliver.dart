import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/api/utils/execute.dart';
import 'package:climate_platform_ui/common/widgets/app_paged_sliver_list.dart';
import 'package:climate_platform_ui/common/widgets/app_widget.dart';
import 'package:climate_platform_ui/features/database_browser/providers/selected_database_provider.dart';
import 'package:climate_platform_ui/features/database_browser/widgets/entity_details_segment.dart';

class DatabaseEntityListSliver extends AppWidget {
  const DatabaseEntityListSliver({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDatabase = ref.watch(selectedDatabaseProvider);
    if (selectedDatabase == null) {
      return const SliverFillRemaining(
        child: Center(child: CircularProgressIndicator()),
      );
    }

    return AppPagedSliverList<EntityMixin>(
      fetchPage: (pageKey, pageSize) async {
        final data = await execute(
          GetEntityPageQuery(
            variables: GetEntityPageArguments(
              database: selectedDatabase,
              page: pageKey,
              size: pageSize,
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
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, item, index) => EntityDetailsSegment(entity: item),
    );
  }
}
