import 'package:climate/common/utils/iterable_extension.dart';
import 'package:climate/common/widgets/app_text.dart';
import 'package:climate/common/widgets/app_widget.dart';
import 'package:climate/features/theming/utils/context_theme_extension.dart';
import 'package:climate/features/theming/utils/material_design_utils_extension.dart';
import 'package:climate/features/theming/utils/spacing_utils_extension.dart';

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
  final bool disabled;
  final AppCardPreset preset;
  final void Function()? onTab;
  final List<AppCardAction>? actions;
  final Widget Function(double safeIconButtonPadding) builder;

  const AppCard({
    super.key,
    this.disabled = false,
    this.preset = AppCardPreset.elevated,
    this.onTab,
    this.actions,
    required this.builder,
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
        color: disabled
            ? colorScheme.onSurface.withOpacity(0.12)
            : isFilled
                ? colorScheme.surfaceVariant
                : null,
        elevation: isOutlined || isFilled || disabled ? 0 : null,
        shape: RoundedRectangleBorder(
          side: isOutlined && !disabled
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
                  theme.spacedPadding(
                    all: 2,
                    child: builder(
                      actions != null
                          ? kMinInteractiveDimension - 2 * theme.spacingBase
                          : 0,
                    ),
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
