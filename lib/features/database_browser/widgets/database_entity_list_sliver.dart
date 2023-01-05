import 'dart:developer';

import 'package:artemis/client.dart';
import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/common/widgets/app_paged_sliver_list.dart';
import 'package:climate_platform_ui/common/widgets/app_widget.dart';
import 'package:climate_platform_ui/features/database_browser/providers/selected_database_provider.dart';
import 'package:climate_platform_ui/features/database_browser/widgets/entity_details_segment.dart';
import 'package:climate_platform_ui/get_it.dart';

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

    // TODO show newest first
    return AppPagedSliverList<EntityMixin>(
      fetchPage: (pageKey, pageSize) async {
        log('fetch entity page $pageKey with size=$pageSize');
        final result = await getIt<ArtemisClient>().execute(
          GetEntityPageQuery(
            variables: GetEntityPageArguments(
              database: selectedDatabase,
              page: pageKey,
              size: pageSize,
            ),
          ),
        );
        final list = result.data?.list;
        if (list == null) {
          throw Error(); // TODO error case
        }
        return AppPagedFetchResult(
          newItems: list.page.entities,
          nextPageKey: list.page.info.next,
          nextPageSize: list.page.info.size,
        );
      },
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, item, index) => EntityDetailsSegment(entity: item),
    );
  }
}
