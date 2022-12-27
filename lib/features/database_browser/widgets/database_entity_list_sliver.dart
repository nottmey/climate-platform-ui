import 'dart:developer';

import 'package:artemis/client.dart';
import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/common/widgets/app_paged_sliver_list.dart';
import 'package:climate_platform_ui/common/widgets/app_text.dart';
import 'package:climate_platform_ui/common/widgets/app_widget.dart';
import 'package:climate_platform_ui/features/database_browser/providers/selected_database_provider.dart';
import 'package:climate_platform_ui/features/theming/models/text_style_preset.dart';
import 'package:climate_platform_ui/features/theming/utils/context_theme_extension.dart';
import 'package:climate_platform_ui/features/theming/utils/spacing_utils_extension.dart';
import 'package:climate_platform_ui/get_it.dart';

class DatabaseEntityListSliver extends AppWidget {
  const DatabaseEntityListSliver({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = context.theme;
    final selectedDatabase = ref.watch(selectedDatabaseProvider);
    if (selectedDatabase == null) {
      return const SliverFillRemaining(
        child: Center(child: CircularProgressIndicator()),
      );
    }

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
          return AppPagedFetchResult(newItems: []); // TODO error case
        }
        return AppPagedFetchResult(
          newItems: list.page.entities,
          nextPageKey: list.page.info.next,
          nextPageSize: list.page.info.size,
        );
      },
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, item, index) {
        return theme.spacedPadding(
          horizontal: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TODO allow details click to entity page
              AppText(
                value: 'Entity: ${item.id}',
                preset: TextStylePreset.titleLarge,
              ),
              ...(item.attributes).map((a) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    theme.spacedPadding(
                      left: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // TODO allow click to attribute page
                          AppText(
                            value: a.name,
                            preset: TextStylePreset.titleMedium,
                          ),
                          AppText(
                            value: '${a.$$typename} type=${a.type} id=${a.id}',
                            preset: TextStylePreset.labelMedium,
                          ),
                        ],
                      ),
                    ),
                    ...(a.values).map(
                      (v) => theme.spacedPadding(
                        left: 4,
                        // TODO follow value to entity page, if ref
                        // TODO show transaction id, allow click to transaction details page
                        child: AppText(value: v),
                      ),
                    )
                  ],
                );
              })
            ],
          ),
        );
      },
    );
  }
}
