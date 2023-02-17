import 'package:climate_platform_ui/features/database_browser/pages/attribute_page.dart';
import 'package:climate_platform_ui/features/database_browser/pages/database_navigator_page.dart';
import 'package:climate_platform_ui/features/database_browser/pages/entity_page.dart';
import 'package:climate_platform_ui/features/dev/pages/dev_menu_page.dart';
import 'package:climate_platform_ui/features/navigation/models/app_navigation_item.dart';
import 'package:climate_platform_ui/features/navigation/pages/root_scaffold_page.dart';
import 'package:climate_platform_ui/features/navigation/pages/tab_transition_page.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/pages/boundary_details_page.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/pages/planet_overview_page.dart';
import 'package:climate_platform_ui/features/theming/pages/showcase_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const _overviewSegment = 'overview';
const _overviewDetailsSegment = 'details';
const _databaseBrowserSegment = 'data';
const _databaseEntitySegment = 'entity';
const _databaseAttributeSegment = 'attribute';
const _devMenuSegment = 'dev';
const _showcaseSegment = 'showcase';

const overviewPath = '/$_overviewSegment';
const overviewDetailsPath = '$overviewPath/$_overviewDetailsSegment';
const databaseBrowserPath = '/$_databaseBrowserSegment';
const devMenuPath = '/$_devMenuSegment';
const showcasePath = '/$_showcaseSegment';

String databaseEntityPath(String id) =>
    '$databaseBrowserPath/$_databaseEntitySegment?id=$id';

String databaseAttributePath(String id, String name) =>
    '$databaseBrowserPath/$_databaseAttributeSegment?id=$id&name=$name';

const initialPath = overviewPath;

GoRouter newRouter() {
  final navigationItems = [
    AppNavigationItem(
      label: 'Overview',
      iconData: Icons.home,
      route: GoRoute(
        path: overviewPath,
        pageBuilder: (context, state) => TabTransitionPage(
          key: const ValueKey(overviewPath), // needed for animation
          child: const PlanetOverviewPage(),
        ),
        routes: [
          GoRoute(
            path: _overviewDetailsSegment,
            builder: (context, state) => const BoundaryDetailsPage(),
          )
        ],
      ),
    ),
    AppNavigationItem(
      label: 'DB Browser',
      iconData: Icons.data_array,
      route: GoRoute(
        path: databaseBrowserPath,
        pageBuilder: (context, state) => TabTransitionPage(
          key: const ValueKey(databaseBrowserPath),
          child: const DatabaseBrowserPage(),
        ),
        routes: [
          GoRoute(
            path: _databaseEntitySegment,
            builder: (context, state) =>
                EntityPage(id: state.queryParams['id']!),
          ),
          GoRoute(
            path: _databaseAttributeSegment,
            builder: (context, state) => AttributePage(
              id: state.queryParams['id']!,
              name: state.queryParams['name']!,
            ),
          )
        ],
      ),
    ),
    AppNavigationItem(
      label: 'Dev Menu',
      iconData: Icons.developer_mode,
      route: GoRoute(
        path: devMenuPath,
        pageBuilder: (context, state) => TabTransitionPage(
          key: const ValueKey(devMenuPath), // needed for animation
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
          key: const ValueKey(showcasePath), // needed for animation
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
              (item) => state.fullpath?.startsWith(item.route.path) ?? false,
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
