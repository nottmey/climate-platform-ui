import 'package:climate_platform_ui/common/widgets/app_page_widget.dart';
import 'package:climate_platform_ui/common/widgets/app_text.dart';
import 'package:climate_platform_ui/common/widgets/main_top_bar.dart';
import 'package:climate_platform_ui/features/database_browser/providers/databases_provider.dart';
import 'package:climate_platform_ui/features/database_browser/widgets/database_list_dropdown.dart';

class DatabaseBrowserPage extends AppPageWidget {
  const DatabaseBrowserPage({super.key});

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    return [
      const MainTopBar(title: 'DB Browser'),
      const SliverToBoxAdapter(child: DatabaseListDropdown()),
      SliverToBoxAdapter(
        child: ref.watch(databasesProvider).when(
              data: (data) => Column(
                children: data
                    .map(
                      (e) => ListTile(
                        leading: const Icon(Icons.info_outline),
                        title: AppText(value: e),
                        dense: true,
                      ),
                    )
                    .toList(),
              ),
              error: (e, s) => AppText(value: 'error: $e'),
              loading: () => const AppText(value: 'loading...'),
            ),
      ),
    ];
  }
}
