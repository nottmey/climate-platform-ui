import 'package:climate_platform_ui/common/widgets/app_header_sliver.dart';
import 'package:climate_platform_ui/common/widgets/app_page_widget.dart';
import 'package:climate_platform_ui/features/database_browser/widgets/database_entity_list_sliver.dart';
import 'package:climate_platform_ui/features/theming/utils/context_theme_extension.dart';
import 'package:climate_platform_ui/features/theming/utils/spacing_utils_extension.dart';

class DatabaseBrowserPage extends AppPageWidget {
  const DatabaseBrowserPage({super.key});

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    final theme = context.theme;
    return [
      const AppHeaderSliver(title: 'DB Browser'),
      theme.spacedSliverSizedBox(height: 2),
      const DatabaseEntityListSliver(),
      theme.spacedSliverSizedBox(height: 2),
    ];
  }
}
