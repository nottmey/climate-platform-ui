import 'package:climate/common/widgets/app_text.dart';
import 'package:climate/common/widgets/app_widget.dart';
import 'package:climate/features/theming/utils/context_theme_extension.dart';
import 'package:climate/features/theming/utils/spacing_utils_extension.dart';

class ShowcaseColorTile extends AppWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = context.theme;
    return Expanded(
      child: ColoredBox(
        color: showcaseColor,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: theme.spacedPadding(
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
            theme.spacedSizedBox(height: 4),
            Align(
              alignment: Alignment.bottomRight,
              child: theme.spacedPadding(
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
