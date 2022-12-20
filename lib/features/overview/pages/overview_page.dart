import 'package:climate_platform_ui/features/navigation/widgets/main_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OverviewPage extends ConsumerWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const CustomScrollView(
      slivers: [
        MainTopBar(title: 'Overview'),

        // TODO sketch content
      ],
    );
  }
}
