import 'package:climate/common/widgets/app_widget.dart';
import 'package:climate/features/theming/models/text_style_preset.dart';

class AppText extends AppWidget {
  final String value;
  final bool looksDisabled;
  final TextStylePreset? preset;
  final TextAlign? textAlign;
  final int? minLines;
  final int? maxLines;
  final bool? softWrap;
  final TextOverflow? overflow;

  final Color? overrideColor;

  const AppText({
    super.key,
    required this.value,
    this.looksDisabled = false,
    this.preset,
    this.textAlign,
    this.minLines,
    this.maxLines,
    this.overrideColor,
    this.softWrap,
    this.overflow,
  });

  TextStyle? _textStyle(BuildContext context) {
    final theme = Theme.of(context);
    final style = preset?.of(theme);
    if (overrideColor != null) {
      if (style != null) {
        return style.copyWith(color: overrideColor);
      } else {
        return TextStyle(color: overrideColor);
      }
    } else if (looksDisabled) {
      final disabledColor = theme.disabledColor;
      if (style != null) {
        return style.copyWith(color: disabledColor);
      } else {
        return TextStyle(color: disabledColor);
      }
    } else {
      return style;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final minLines = this.minLines;
    return Text(
      // hacky, until solved: https://github.com/flutter/flutter/issues/31134
      minLines == null ? value : value + ('\n' * (minLines - 1)),
      textAlign: textAlign ?? TextAlign.left,
      style: _textStyle(context),
      maxLines: maxLines ?? minLines,
      softWrap: softWrap,
      overflow: overflow ?? TextOverflow.fade,
    );
  }
}
