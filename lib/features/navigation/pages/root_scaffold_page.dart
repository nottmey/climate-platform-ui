import 'package:climate_platform_ui/features/navigation/models/app_navigation_item.dart';
import 'package:climate_platform_ui/features/navigation/widgets/app_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class RootScaffoldPage extends StatelessWidget {
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
  Widget build(BuildContext context) {
    // TODO implement breakpoints with different action bars
    // https://github.com/fluttercommunity/breakpoint/blob/master/lib/breakpoint.dart
    // https://m3.material.io/foundations/adaptive-design/large-screens/component-adaptation#5b32d2bf-8c93-4461-a4ac-a6cb4f8547d1
    return Scaffold(
      body: SafeArea(
        child: child,
      ),
      bottomNavigationBar: AppBottomNavigationBar(
        selectedIndex: selectedIndex,
        items: navigationItems,
      ),
    );
  }
}
