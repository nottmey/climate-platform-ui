import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/common/widgets/app_header_sliver.dart';
import 'package:climate_platform_ui/common/widgets/app_page_widget.dart';
import 'package:climate_platform_ui/common/widgets/app_text.dart';
import 'package:climate_platform_ui/features/database_browser/providers/entity_provider_family.dart';
import 'package:climate_platform_ui/features/database_browser/providers/selected_database_provider.dart';
import 'package:climate_platform_ui/features/database_browser/widgets/entity_details_segment.dart';

class EntityPage extends AppPageWidget {
  final String id;

  const EntityPage({super.key, required this.id});

  Widget buildLoadingSliver() {
    return const SliverFillRemaining(
      child: Center(child: CircularProgressIndicator()),
    );
  }

  Widget buildErrorSliver(Object? error, StackTrace? stackTrace) {
    return const SliverFillRemaining(
      child: Center(
        child: AppText(
          value: 'Error',
        ),
      ),
    );
  }

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    final selectedDatabase = ref.watch(selectedDatabaseProvider);
    if (selectedDatabase == null) {
      return [buildLoadingSliver()];
    }

    final asyncEntity = ref.watch(
      entityProviderFamily(
        GetEntityArguments(database: selectedDatabase, id: id),
      ),
    );

    return [
      AppHeaderSliver(title: 'Entity "$id"'),
      asyncEntity.when(
        loading: buildLoadingSliver,
        error: buildErrorSliver,
        data: (entity) {
          return SliverToBoxAdapter(
            child: EntityDetailsSegment(
              entity: entity,
              showInlineTitle: false,
            ),
          );
        },
      )
    ];
  }
}
