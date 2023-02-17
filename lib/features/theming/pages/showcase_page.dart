import 'package:climate_platform_ui/common/widgets/app_card.dart';
import 'package:climate_platform_ui/common/widgets/app_header_sliver.dart';
import 'package:climate_platform_ui/common/widgets/app_page_widget.dart';
import 'package:climate_platform_ui/common/widgets/app_text.dart';
import 'package:climate_platform_ui/features/theming/models/text_style_preset.dart';
import 'package:climate_platform_ui/features/theming/utils/context_theme_extension.dart';
import 'package:climate_platform_ui/features/theming/widgets/showcase_color_tile.dart';
import 'package:climate_platform_ui/features/theming/widgets/showcase_text.dart';

class ShowcasePage extends AppPageWidget {
  const ShowcasePage({super.key});

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    final theme = context.theme;
    final colorScheme = theme.colorScheme;
    return [
      const AppHeaderSliver(title: 'Theme Showcase'),
      SliverToBoxAdapter(
        child: SelectionArea(
          child: Row(
            children: [
              ShowcaseColorTile(
                label: 'Primary',
                textColor: colorScheme.onPrimary,
                showcaseColor: colorScheme.primary,
              ),
              ShowcaseColorTile(
                label: 'On Primary',
                textColor: colorScheme.primary,
                showcaseColor: colorScheme.onPrimary,
              ),
              ShowcaseColorTile(
                label: 'Primary Container',
                textColor: colorScheme.onPrimaryContainer,
                showcaseColor: colorScheme.primaryContainer,
              ),
              ShowcaseColorTile(
                label: 'On Primary Container',
                textColor: colorScheme.primaryContainer,
                showcaseColor: colorScheme.onPrimaryContainer,
              ),
            ],
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Row(
          children: [
            ShowcaseColorTile(
              label: 'Secondary',
              textColor: colorScheme.onSecondary,
              showcaseColor: colorScheme.secondary,
            ),
            ShowcaseColorTile(
              label: 'On Secondary',
              textColor: colorScheme.secondary,
              showcaseColor: colorScheme.onSecondary,
            ),
            ShowcaseColorTile(
              label: 'Secondary Container',
              textColor: colorScheme.onSecondaryContainer,
              showcaseColor: colorScheme.secondaryContainer,
            ),
            ShowcaseColorTile(
              label: 'On Secondary Container',
              textColor: colorScheme.secondaryContainer,
              showcaseColor: colorScheme.onSecondaryContainer,
            ),
          ],
        ),
      ),
      SliverToBoxAdapter(
        child: Row(
          children: [
            ShowcaseColorTile(
              label: 'Tertiary',
              textColor: colorScheme.onTertiary,
              showcaseColor: colorScheme.tertiary,
            ),
            ShowcaseColorTile(
              label: 'On Tertiary',
              textColor: colorScheme.tertiary,
              showcaseColor: colorScheme.onTertiary,
            ),
            ShowcaseColorTile(
              label: 'Tertiary Container',
              textColor: colorScheme.onTertiaryContainer,
              showcaseColor: colorScheme.tertiaryContainer,
            ),
            ShowcaseColorTile(
              label: 'On Tertiary Container',
              textColor: colorScheme.tertiaryContainer,
              showcaseColor: colorScheme.onTertiaryContainer,
            ),
          ],
        ),
      ),
      SliverToBoxAdapter(
        child: Row(
          children: [
            ShowcaseColorTile(
              label: 'Background',
              textColor: colorScheme.onBackground,
              showcaseColor: colorScheme.background,
            ),
            ShowcaseColorTile(
              label: 'On Background',
              textColor: colorScheme.background,
              showcaseColor: colorScheme.onBackground,
            ),
            ShowcaseColorTile(
              label: 'Surface',
              textColor: colorScheme.onSurface,
              showcaseColor: colorScheme.surface,
            ),
            ShowcaseColorTile(
              label: 'On Surface',
              textColor: colorScheme.surface,
              showcaseColor: colorScheme.onSurface,
            ),
          ],
        ),
      ),
      SliverToBoxAdapter(
        child: Row(
          children: [
            ShowcaseColorTile(
              label: 'Surface Variant',
              textColor: colorScheme.onSurfaceVariant,
              showcaseColor: colorScheme.surfaceVariant,
            ),
            ShowcaseColorTile(
              label: 'On Surface Variant',
              textColor: colorScheme.surfaceVariant,
              showcaseColor: colorScheme.onSurfaceVariant,
            ),
            ShowcaseColorTile(
              label: 'Outline',
              textColor: colorScheme.surface,
              showcaseColor: colorScheme.outline,
            ),
          ],
        ),
      ),
      SliverToBoxAdapter(
        child: Row(
          children: [
            ShowcaseColorTile(
              label: 'Error',
              textColor: colorScheme.onError,
              showcaseColor: colorScheme.error,
            ),
            ShowcaseColorTile(
              label: 'On Error',
              textColor: colorScheme.error,
              showcaseColor: colorScheme.onError,
            ),
            ShowcaseColorTile(
              label: 'Error Container',
              textColor: colorScheme.onErrorContainer,
              showcaseColor: colorScheme.errorContainer,
            ),
            ShowcaseColorTile(
              label: 'On Error Container',
              textColor: colorScheme.errorContainer,
              showcaseColor: colorScheme.onErrorContainer,
            ),
          ],
        ),
      ),
      SliverList(
        delegate: SliverChildListDelegate(
          TextStylePreset.values
              .map((preset) => ShowcaseText(preset: preset))
              .toList(),
        ),
      ),
      SliverList(
        delegate: SliverChildListDelegate(
          AppCardPreset.values
              .map(
                (preset) => AppCard(
                  preset: preset,
                  child: AppText(
                    value: '$AppCard with $preset',
                  ),
                ),
              )
              .toList(),
        ),
      ),
      SliverList(
        delegate: SliverChildListDelegate(
          AppCardPreset.values
              .map(
                (preset) => AppCard(
                  disabled: true,
                  preset: preset,
                  child: AppText(
                    value: '$AppCard with $preset disabled',
                    looksDisabled: true,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    ];
  }
}
