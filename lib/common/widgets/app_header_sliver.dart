import 'package:climate/common/widgets/app_text.dart';
import 'package:climate/features/theming/providers/theme_provider.dart';
import 'package:climate/features/theming/themes/default_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppHeaderSliver extends ConsumerWidget {
  final String? titleFallback;
  final ProviderListenable<AsyncValue<String?>>? titleProvider;

  const AppHeaderSliver({
    super.key,
    this.titleFallback,
    this.titleProvider,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncTitle = titleProvider != null
        ? ref.watch(titleProvider!)
        : AsyncValue.data(titleFallback);
    return SliverAppBar.large(
      title: AppText(
        value: asyncTitle.when(
          data: (value) => value ?? '',
          error: (e, st) => '<Error>',
          loading: () => '...',
        ),
        overflow: TextOverflow.visible,
      ),
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
