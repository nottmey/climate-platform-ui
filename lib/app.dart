import 'package:climate_platform_ui/router.dart';
import 'package:climate_platform_ui/themes/default_theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: defaultTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
