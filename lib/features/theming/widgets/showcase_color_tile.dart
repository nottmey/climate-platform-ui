import 'package:climate_platform_ui/common/widgets/app_text.dart';
import 'package:climate_platform_ui/features/theming/utils/context_theme_extension.dart';
import 'package:climate_platform_ui/features/theming/utils/spacing_utils_extension.dart';
import 'package:flutter/material.dart';

class ShowcaseColorTile extends StatelessWidget {
  final String label;
  final Color textColor;
  final Color showcaseColor;

  const ShowcaseColorTile({
    super.key,
    required this.label,
    required this.textColor,
    required this.showcaseColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Expanded(
      child: ColoredBox(
        color: showcaseColor,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: theme.padding(
                top: 1,
                left: 1,
                bottom: 1,
                child: AppText(
                  value: label,
                  overrideColor: textColor,
                  minLines: 2,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            theme.sizedBox(height: 4),
            Align(
              alignment: Alignment.bottomRight,
              child: theme.padding(
                all: 1,
                child: AppText(
                  value:
                      '#${showcaseColor.value.toRadixString(16).toUpperCase()}',
                  overrideColor: textColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}