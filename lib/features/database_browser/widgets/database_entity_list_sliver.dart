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
    final limitState = useState(200);

    return AppPagedSliverList<EntityMixin>(
      fetchPage: (pageKey) async {
        // TODO way to much boilerplate, transition to page semantic in api
        final limit = limitState.value;
        final offset = pageKey * limit;
        log('fetch entity page $pageKey (offset=$offset,limit=$limit)');
        final result = await getIt<ArtemisClient>().execute(
          DataQuery(
            variables: DataArguments(
              database: selectedDatabase,
              limit: limit,
              offset: offset,
            ),
          ),
        );
        final list = result.data?.list;
        if (list == null) {
          // TODO error case
          return AppPagedFetchResult(newItems: []);
        }
        final total = list.total;
        final usedOffset = list.slice.usedOffset;
        final usedLimit = list.slice.usedLimit;
        if (limit != usedLimit) {
          // invalid limit value, setting accordingly
          limitState.value = usedLimit;
        }
        final nextPageKey = total > usedOffset + usedLimit ? pageKey + 1 : null;
        log('got entity page $pageKey (total=$total,offset=$usedOffset,limit=$usedLimit,nextPageKey=$nextPageKey)');
        return AppPagedFetchResult(
          newItems: list.slice.entities,
          nextPageKey: nextPageKey,
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
              ...(item.attributes ?? []).map((a) {
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
                    ...(a.values ?? []).map(
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
