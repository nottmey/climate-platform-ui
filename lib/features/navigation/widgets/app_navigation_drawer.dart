import 'package:climate_platform_ui/common/widgets/app_text.dart';
import 'package:climate_platform_ui/common/widgets/app_widget.dart';
import 'package:climate_platform_ui/features/navigation/models/app_navigation_item.dart';
import 'package:go_router/go_router.dart';

class AppNavigationDrawer extends AppWidget {
  final int selectedIndex;
  final List<AppNavigationItem> items;

  const AppNavigationDrawer({
    super.key,
    required this.selectedIndex,
    required this.items,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // can be replaced with material 3 rail once released by flutter core team
    // https://github.com/flutter/flutter/pull/115668
    return NavigationRail(
      extended: true,
      groupAlignment: -0.8,
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) {
        context.go(items.elementAt(index).route.path);
      },
      destinations: items
          .map(
            (i) => NavigationRailDestination(
              icon: Icon(i.iconData),
              label: AppText(value: i.label),
            ),
          )
          .toList(),
    );
  }
}
