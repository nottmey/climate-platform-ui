import 'package:climate_platform_ui/common/widgets/app_page_widget.dart';
import 'package:climate_platform_ui/common/widgets/main_top_bar.dart';
import 'package:climate_platform_ui/features/database_browser/widgets/database_selection_dropdown.dart';

class DatabaseBrowserPage extends AppPageWidget {
  const DatabaseBrowserPage({super.key});

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    return [
      const MainTopBar(title: 'DB Browser'),
      const SliverToBoxAdapter(child: DatabaseSelectionDropdown()),
    ];
  }
}
