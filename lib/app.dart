import 'package:climate_platform_ui/features/theming/providers/theme_provider.dart';
import 'package:climate_platform_ui/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends ConsumerWidget {
  final GoRouter router = newRouter();

  App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      theme: ref.watch(themeProvider),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
