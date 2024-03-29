import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:climate/features/breakdowns/pages/breakdown_details_page.dart';
import 'package:climate/features/data_points/pages/data_point_details_page.dart';
import 'package:climate/features/database_browser/pages/attribute_page.dart';
import 'package:climate/features/database_browser/pages/database_navigator_page.dart';
import 'package:climate/features/database_browser/pages/entity_page.dart';
import 'package:climate/features/navigation/helpers/context_router_extension.dart';
import 'package:climate/features/navigation/models/app_navigation_item.dart';
import 'package:climate/features/navigation/pages/root_scaffold_page.dart';
import 'package:climate/features/navigation/pages/tab_transition_page.dart';
import 'package:climate/features/planetary_boundaries/pages/boundary_details_page.dart';
import 'package:climate/features/planetary_boundaries/pages/planet_overview_page.dart';
import 'package:climate/features/profile/pages/profile_page.dart';
import 'package:climate/features/quantifications/pages/quantification_details_page.dart';
import 'package:climate/features/theming/pages/showcase_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Test iOS Simulator with `xcrun simctl openurl booted climate://ignored-domain.com/overview`
// Test Android with `adb shell am start -a android.intent.action.VIEW -c android.intent.category.BROWSABLE -d climate://ignored-domain.com/overview`
// URLs with empty domain are also ok, e.g. `climate:///overview`
// URLs with fragment path are also ok, e.g. `climate:///#overview` or `climate:///#/overview`

const _overviewSegment = 'overview';
const _boundaryDetailsSegment = 'details';
const _quantificationDetailsSegment = 'quantifications';
const _dataPointDetailsSegment = 'datapoints';
const _breakdownDetailsSegment = 'breakdowns';
const _databaseBrowserSegment = 'data';
const _databaseEntitySegment = 'entity';
const _databaseAttributeSegment = 'attribute';
const _profileSegment = 'profile';
const _showcaseSegment = 'showcase';

extension Routes on BuildContext {
  void goToBoundaryDetails(String boundaryId) {
    push('/$_overviewSegment/$_boundaryDetailsSegment/$boundaryId');
  }

  void goToQuantificationDetails(String quantificationId) {
    push('/$_overviewSegment/$_quantificationDetailsSegment/$quantificationId');
  }

  void goToDataPointDetails(String dataPointId) {
    push('/$_overviewSegment/$_dataPointDetailsSegment/$dataPointId');
  }

  void goToBreakdownDetails(String breakdownId) {
    push('/$_overviewSegment/$_breakdownDetailsSegment/$breakdownId');
  }

  void goToDatabaseEntityIfNew(String id) {
    pushIfNew('/$_databaseBrowserSegment/$_databaseEntitySegment?id=$id');
  }

  void goToDatabaseAttributeIfNew(String id, String name) {
    pushIfNew(
      '/$_databaseBrowserSegment/$_databaseAttributeSegment?id=$id&name=$name',
    );
  }
}

// TODO fix back navigation gesture handling
GoRouter newRouter() {
  final navigationItems = [
    AppNavigationItem(
      label: 'Overview',
      iconData: Icons.home,
      route: GoRoute(
        path: '/$_overviewSegment',
        pageBuilder: (context, state) => TabTransitionPage(
          key: const ValueKey(_overviewSegment), // needed for animation
          child: const PlanetOverviewPage(),
        ),
        routes: [
          GoRoute(
            path: '$_boundaryDetailsSegment/:boundaryId',
            builder: (context, state) {
              return BoundaryDetailsPage(
                id: state.pathParameters['boundaryId']!,
              );
            },
          ),
          GoRoute(
            path: '$_quantificationDetailsSegment/:quantificationId',
            builder: (context, state) {
              return QuantificationDetailsPage(
                id: state.pathParameters['quantificationId']!,
              );
            },
          ),
          GoRoute(
            path: '$_dataPointDetailsSegment/:dataPointId',
            builder: (context, state) {
              return DataPointDetailsPage(
                id: state.pathParameters['dataPointId']!,
              );
            },
          ),
          GoRoute(
            path: '$_breakdownDetailsSegment/:breakdownId',
            builder: (context, state) {
              return BreakdownDetailsPage(
                id: state.pathParameters['breakdownId']!,
              );
            },
          ),
        ],
      ),
    ),
    AppNavigationItem(
      label: 'DB Browser',
      iconData: Icons.data_array,
      route: GoRoute(
        path: '/$_databaseBrowserSegment',
        pageBuilder: (context, state) => TabTransitionPage(
          key: const ValueKey(_databaseBrowserSegment),
          child: const DatabaseBrowserPage(),
        ),
        routes: [
          GoRoute(
            path: _databaseEntitySegment,
            builder: (context, state) =>
                EntityPage(id: state.uri.queryParameters['id']!),
          ),
          GoRoute(
            path: _databaseAttributeSegment,
            builder: (context, state) => AttributePage(
              id: state.uri.queryParameters['id']!,
              name: state.uri.queryParameters['name']!,
            ),
          ),
        ],
      ),
    ),
    AppNavigationItem(
      label: 'Showcase',
      iconData: Icons.view_comfortable,
      route: GoRoute(
        path: '/$_showcaseSegment',
        pageBuilder: (context, state) => TabTransitionPage(
          key: const ValueKey(_showcaseSegment), // needed for animation
          child: const ShowcasePage(),
        ),
      ),
    ),
    AppNavigationItem(
      label: 'Profile',
      iconData: Icons.person,
      route: GoRoute(
        path: '/$_profileSegment',
        pageBuilder: (context, state) => TabTransitionPage(
          key: const ValueKey(_profileSegment), // needed for animation
          child: const AuthenticatedView(child: ProfilePage()),
        ),
      ),
    ),
  ];

  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', redirect: (_, __) => '/$_overviewSegment'),
      ShellRoute(
        // may be able to keep state soon, when https://github.com/flutter/packages/pull/2650 is merged
        // then adapt to this example: https://github.com/tolo/stateful_books/blob/main/lib/src/screens/scaffold.dart
        builder: (context, state, child) {
          return RootScaffoldPage(
            selectedIndex: navigationItems.indexWhere(
              (item) => state.fullPath?.startsWith(item.route.path) ?? false,
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
