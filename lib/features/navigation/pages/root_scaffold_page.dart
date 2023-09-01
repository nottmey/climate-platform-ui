import 'package:climate/common/widgets/app_widget.dart';
import 'package:climate/features/breakpoints/utils/context_window_size_extension.dart';
import 'package:climate/features/navigation/models/app_navigation_item.dart';
import 'package:climate/features/navigation/widgets/app_bottom_navigation_bar.dart';
import 'package:climate/features/navigation/widgets/app_navigation_drawer.dart';
import 'package:climate/features/navigation/widgets/app_navigation_rail.dart';

class RootScaffoldPage extends AppWidget {
  final int selectedIndex;
  final List<AppNavigationItem> navigationItems;
  final Widget child;

  const RootScaffoldPage({
    super.key,
    required this.selectedIndex,
    required this.navigationItems,
    required this.child,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final windowSize = context.queryWindowSize();

    return Scaffold(
      body: SafeArea(
        child: windowSize.isMedium() || windowSize.isExpanded()
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (windowSize.isMedium())
                    AppNavigationRail(
                      selectedIndex: selectedIndex,
                      items: navigationItems,
                    ),
                  if (windowSize.isExpanded())
                    AppNavigationDrawer(
                      selectedIndex: selectedIndex,
                      items: navigationItems,
                    ),
                  Expanded(child: child)
                ],
              )
            : child,
      ),
      bottomNavigationBar: windowSize.isCompact()
          ? AppBottomNavigationBar(
              selectedIndex: selectedIndex,
              items: navigationItems,
            )
          : null,
    );
  }
}
