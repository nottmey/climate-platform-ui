import 'package:climate_platform_ui/common/utils/iterable_extension.dart';
import 'package:climate_platform_ui/common/widgets/app_text.dart';
import 'package:climate_platform_ui/common/widgets/app_widget.dart';
import 'package:climate_platform_ui/features/theming/utils/context_theme_extension.dart';
import 'package:climate_platform_ui/features/theming/utils/material_design_utils_extension.dart';
import 'package:climate_platform_ui/features/theming/utils/spacing_utils_extension.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum AppCardPreset {
  elevated,
  filled,
  outlined,
}

class AppCardAction {
  final String label;
  final Color? color;
  final void Function() onSelected;

  AppCardAction({
    required this.label,
    this.color,
    required this.onSelected,
  });
}

class AppCard extends AppWidget {
  final AppCardPreset preset;
  final void Function()? onTab;
  final List<AppCardAction>? actions;
  final Widget? child;

  const AppCard({
    super.key,
    this.preset = AppCardPreset.elevated,
    this.onTab,
    this.actions,
    required this.child,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = context.theme;
    final colorScheme = theme.colorScheme;

    final isFilled = preset == AppCardPreset.filled;
    final isOutlined = preset == AppCardPreset.outlined;

    final actions = this.actions;

    return theme.spacedPadding(
      horizontal: 2,
      vertical: 1,
      child: Card(
        color: isFilled ? colorScheme.surfaceVariant : null,
        elevation: isOutlined || isFilled ? 0 : null,
        shape: RoundedRectangleBorder(
          side: isOutlined
              ? BorderSide(color: colorScheme.outline)
              : BorderSide.none,
          borderRadius: theme.defaultBorderRadius,
        ),
        child: InkWell(
          borderRadius: theme.defaultBorderRadius,
          onTap: onTab,
          child: Stack(
            children: [
              if (actions != null)
                Align(
                  alignment: Alignment.topRight,
                  child: PopupMenuButton<AppCardAction>(
                    color: colorScheme.surfaceVariant,
                    icon: const Icon(Icons.more_vert),
                    position: PopupMenuPosition.under,
                    onSelected: (action) => action.onSelected(),
                    itemBuilder: (context) => actions
                        .map<PopupMenuEntry<AppCardAction>>(
                          (a) => PopupMenuItem(
                            value: a,
                            child: AppText(
                              value: a.label,
                              overrideColor: a.color,
                            ),
                          ),
                        )
                        .interpose(() => const PopupMenuDivider())
                        .toList(),
                  ),
                ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // TODO Image.network('https://dummyimage.com/600x400/fff/000.jpg&text=graph'),
                  theme.spacedPadding(
                    all: 2,
                    child: child,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
