import 'package:climate_platform_ui/features/overview/pages/overview_page.dart';
import 'package:climate_platform_ui/features/theming/pages/showcase_page.dart';
import 'package:go_router/go_router.dart';

const _overviewSegment = 'overview';
const _showcaseSegment = 'showcase';

const overviewPath = '/$_overviewSegment';
const showcasePath = '/$_overviewSegment/$_showcaseSegment';

final router = GoRouter(
  initialLocation: showcasePath,
  routes: [
    GoRoute(
      path: overviewPath,
      builder: (context, state) => const OverviewPage(),
      routes: [
        GoRoute(
          path: _showcaseSegment,
          builder: (context, state) => const ShowcasePage(),
        ),
      ],
    ),
  ],
);
