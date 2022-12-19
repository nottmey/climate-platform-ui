import 'package:climate_platform_ui/features/dev/pages/dev_menu_page.dart';
import 'package:climate_platform_ui/features/navigation/models/app_navigation_item.dart';
import 'package:climate_platform_ui/features/navigation/pages/root_scaffold_page.dart';
import 'package:climate_platform_ui/features/navigation/pages/tab_transition_page.dart';
import 'package:climate_platform_ui/features/overview/pages/overview_page.dart';
import 'package:climate_platform_ui/features/theming/pages/showcase_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const _overviewSegment = 'overview';
const _devMenuSegment = 'dev';
const _showcaseSegment = 'showcase';

const overviewPath = '/$_overviewSegment';
const devMenuPath = '/$_devMenuSegment';
const showcasePath = '/$_showcaseSegment';

const initialPath = overviewPath;

GoRouter newRouter({required ThemeData theme}) {
  final navigationItems = [
    AppNavigationItem(
      label: 'Overview',
      iconData: Icons.home,
      route: GoRoute(
        path: overviewPath,
        pageBuilder: (context, state) => TabTransitionPage(
          key: const ValueKey(overviewPath),
          barrierColor: theme.backgroundColor,
          child: const OverviewPage(),
        ),
      ),
    ),
    AppNavigationItem(
      label: 'Dev Menu',
      iconData: Icons.developer_mode,
      route: GoRoute(
        path: devMenuPath,
        pageBuilder: (context, state) => TabTransitionPage(
          key: const ValueKey(devMenuPath),
          barrierColor: theme.backgroundColor,
          child: const DevMenuPage(),
        ),
      ),
    ),
    AppNavigationItem(
      label: 'Showcase',
      iconData: Icons.view_comfortable,
      route: GoRoute(
        path: showcasePath,
        pageBuilder: (context, state) => TabTransitionPage(
          key: const ValueKey(showcasePath),
          barrierColor: theme.backgroundColor,
          child: const ShowcasePage(),
        ),
      ),
    ),
  ];

  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', redirect: (_, __) => initialPath),
      ShellRoute(
        // may be able to keep state soon, when https://github.com/flutter/packages/pull/2650 is merged
        // then adapt to this example: https://github.com/tolo/stateful_books/blob/main/lib/src/screens/scaffold.dart
        builder: (context, state, child) {
          return RootScaffoldPage(
            selectedIndex: navigationItems.indexWhere(
              (item) => item.route.path == state.fullpath,
            ),
            navigationItems: navigationItems,
            child: child,
          );
        },
        routes: navigationItems.map((i) => i.route).toList(),
      ),
    ],
  );
}
