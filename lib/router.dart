import 'package:climate_platform_ui/features/overview/pages/overview_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const OverviewPage(),
    ),
  ],
);
