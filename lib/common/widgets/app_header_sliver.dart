import 'package:climate_platform_ui/common/widgets/app_text.dart';
import 'package:climate_platform_ui/features/theming/providers/theme_provider.dart';
import 'package:climate_platform_ui/features/theming/themes/default_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppHeaderSliver extends ConsumerWidget {
  final String title;

  const AppHeaderSliver({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverAppBar.large(
      title: AppText(value: title, overflow: TextOverflow.visible),
      pinned: true,
      actions: [
        IconButton(
          onPressed: () {
            ref.read(themeProvider.notifier).update((state) {
              if (state.brightness == Brightness.light) {
                return defaultTheme(brightness: Brightness.dark);
              } else {
                return defaultTheme(brightness: Brightness.light);
              }
            });
          },
          icon: Icon(
            ref.watch(themeProvider).brightness == Brightness.light
                ? Icons.dark_mode
                : Icons.light_mode,
          ),
        ),
      ],
    );
  }
}
