import 'package:climate_platform_ui/features/theming/providers/theme_provider.dart';
import 'package:climate_platform_ui/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerState = useState(newRouter(ref));

    return MaterialApp.router(
      theme: ref.watch(themeProvider),
      debugShowCheckedModeBanner: false,
      routerConfig: routerState.value,
    );
  }
}
