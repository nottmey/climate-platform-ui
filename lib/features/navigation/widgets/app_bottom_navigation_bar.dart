import 'package:climate_platform_ui/common/widgets/app_widget.dart';
import 'package:climate_platform_ui/features/navigation/models/app_navigation_item.dart';
import 'package:go_router/go_router.dart';

class AppBottomNavigationBar extends AppWidget {
  final int selectedIndex;
  final List<AppNavigationItem> items;

  const AppBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.items,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) {
        context.go(items.elementAt(index).route.path);
      },
      destinations: items.map((i) {
        return NavigationDestination(
          icon: Icon(i.iconData),
          label: i.label,
        );
      }).toList(),
    );
  }
}
