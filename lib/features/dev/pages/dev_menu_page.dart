import 'package:climate_platform_ui/common/providers/entities_provider_family.dart';
import 'package:climate_platform_ui/common/widgets/app_page_widget.dart';
import 'package:climate_platform_ui/common/widgets/app_text.dart';
import 'package:climate_platform_ui/common/widgets/main_top_bar.dart';
import 'package:climate_platform_ui/features/database_browser/providers/selected_database_provider.dart';

class DevMenuPage extends AppPageWidget {
  const DevMenuPage({super.key});

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    final selectedDatabase = ref.watch(selectedDatabaseProvider);
    return [
      const MainTopBar(title: 'Dev Menu'),
      if (selectedDatabase != null)
        SliverToBoxAdapter(
          child: ref.watch(entitiesProviderFamily(selectedDatabase)).when(
                data: (data) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: data
                        .map(
                          (e) => ListTile(
                            title: AppText(value: e.data ?? ''),
                            dense: true,
                          ),
                        )
                        .toList(),
                  );
                },
                error: (e, s) => AppText(value: 'error: $e'),
                loading: () => const AppText(value: 'loading...'),
              ),
        ),
    ];
  }
}
