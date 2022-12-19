import 'package:climate_platform_ui/features/theming/themes/default_theme.dart';
import 'package:climate_platform_ui/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final ThemeData theme;
  late final GoRouter router;

  @override
  void initState() {
    theme = defaultTheme();
    router = newRouter(theme: theme);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: theme,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
