import 'package:climate_platform_ui/features/theming/utils/context_theme_extension.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class AppPageWidget extends HookConsumerWidget {
  const AppPageWidget({super.key});

  @override
  @nonVirtual
  Widget build(BuildContext context, WidgetRef ref) {
    return ColoredBox(
      color: context.theme.backgroundColor,
      child: CustomScrollView(
        slivers: buildSlivers(context, ref),
      ),
    );
  }

  List<Widget> buildSlivers(BuildContext context, WidgetRef ref);
}
