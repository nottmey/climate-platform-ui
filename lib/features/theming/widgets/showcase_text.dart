import 'package:climate/common/widgets/app_text.dart';
import 'package:climate/common/widgets/app_widget.dart';
import 'package:climate/features/theming/models/text_style_preset.dart';
import 'package:climate/features/theming/utils/context_theme_extension.dart';
import 'package:climate/features/theming/utils/spacing_utils_extension.dart';

// https://stackoverflow.com/questions/7593969/regex-to-split-camelcase-or-titlecase-advanced
final _splitCamelCase = RegExp('(?<!^)(?=[A-Z])');

class ShowcaseText extends AppWidget {
  final TextStylePreset preset;

  const ShowcaseText({super.key, required this.preset});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = context.theme;
    final textTheme = preset.of(theme);
    final segments = preset.name.split(_splitCamelCase);
    final height = textTheme?.height;
    final size = textTheme?.fontSize;

    return theme.spacedPadding(
      all: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: theme.colorScheme.onBackground,
                  width: 0,
                ),
              ),
            ),
            child: AppText(
              value: 'AaBbGgJjÄäÖöÜüẞßé-_?#@,.;:1234567890',
              preset: preset,
              textAlign: TextAlign.left,
              minLines: 1,
              maxLines: 1,
              softWrap: false,
            ),
          ),
          theme.spacedSizedBox(height: 2),
          Text('Role: ${segments.map((e) => e.toLowerCase()).join(' ')}'),
          Text('Font: ${textTheme?.fontFamily}'),
          Text('Size: ${textTheme?.fontSize}'),
          Text(
            'Height: ${height != null && size != null ? (height * size).roundToDouble() : null}',
          ),
          Text('Letter Spacing: ${textTheme?.letterSpacing}'),
          Text('Weight: ${textTheme?.fontWeight}'),
        ],
      ),
    );
  }
}
