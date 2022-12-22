import 'package:climate_platform_ui/common/widgets/app_page_widget.dart';
import 'package:climate_platform_ui/common/widgets/app_text.dart';
import 'package:climate_platform_ui/features/navigation/widgets/main_top_bar.dart';
import 'package:climate_platform_ui/features/theming/models/text_style_preset.dart';
import 'package:climate_platform_ui/features/theming/utils/context_theme_extension.dart';
import 'package:climate_platform_ui/features/theming/utils/spacing_utils_extension.dart';
import 'package:climate_platform_ui/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OverviewPage extends AppPageWidget {
  const OverviewPage({super.key});

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    final theme = context.theme;
    return [
      const MainTopBar(title: 'Overview'),
      // TODO sketch content
      // TODO content card grid
      SliverToBoxAdapter(
        // TODO Topic Card
        child: theme.padding(
          horizontal: 2,
          child: Card(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: PopupMenuButton<int>(
                    color: theme.colorScheme.surfaceVariant,
                    icon: const Icon(Icons.more_vert),
                    position: PopupMenuPosition.under,
                    itemBuilder: (context) => [
                      const PopupMenuItem(child: AppText(value: 'Edit')),
                      const PopupMenuDivider(),
                      PopupMenuItem(
                        child: AppText(
                          value: 'Delete',
                          overrideColor: theme.errorColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // TODO Image.network('https://dummyimage.com/600x400/fff/000.jpg&text=graph'),
                    theme.padding(
                      all: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          AppText(
                            value: 'Title',
                            preset: TextStylePreset.titleLarge,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: theme.padding(
          all: 2,
          child: Card(
            child: theme.padding(
              all: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Title',
                      border: OutlineInputBorder(gapPadding: 4),
                    ),
                    controller: TextEditingController(text: ''),
                  ),
                  OutlinedButton(onPressed: () {}, child: const Text('submit'))
                ],
              ),
            ),
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: theme.padding(
          horizontal: 2,
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: theme.colorScheme.outline,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            child: Center(
              // TODO card should be inkwell/button
              child: IconButton(
                onPressed: () {
                  context.go(overviewDetailsPath);
                },
                icon: const Icon(Icons.add),
              ),
            ),
          ),
        ),
      ),
    ];
  }
}
