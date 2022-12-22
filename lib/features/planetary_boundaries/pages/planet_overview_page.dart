import 'package:climate_platform_ui/common/widgets/app_card.dart';
import 'package:climate_platform_ui/common/widgets/app_page_widget.dart';
import 'package:climate_platform_ui/common/widgets/app_text.dart';
import 'package:climate_platform_ui/features/navigation/widgets/main_top_bar.dart';
import 'package:climate_platform_ui/features/theming/models/text_style_preset.dart';
import 'package:climate_platform_ui/features/theming/utils/context_theme_extension.dart';
import 'package:climate_platform_ui/features/theming/utils/spacing_utils_extension.dart';
import 'package:climate_platform_ui/router.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlanetOverviewPage extends AppPageWidget {
  const PlanetOverviewPage({super.key});

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    final theme = context.theme;
    return [
      const MainTopBar(title: 'Planetary boundaries'),
      // TODO sketch content
      // TODO content card grid
      SliverToBoxAdapter(
        child: AppCard(
          onTab: () {
            context.go(overviewDetailsPath);
          },
          actions: [
            AppCardAction(
              label: 'Edit',
              onSelected: () {
                // TODO
              },
            ),
            AppCardAction(
              label: 'Delete',
              color: theme.errorColor,
              onSelected: () {
                // TODO
              },
            ),
          ],
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
      ),
      SliverToBoxAdapter(
        child: AppCard(
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
              theme.spacedSizedBox(height: 1),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: theme.colorScheme.onPrimary,
                  backgroundColor: theme.colorScheme.primary,
                ),
                onPressed: () {
                  // TODO
                },
                child: const Text('Submit'),
              ),
              const ElevatedButton(
                onPressed: null,
                child: Text('Deactivated'),
              ),
            ],
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: AppCard(
          preset: AppCardPreset.outlined,
          onTab: () {
            // TODO
          },
          child: const Center(
            child: Icon(Icons.add),
          ),
        ),
      ),
    ];
  }
}
