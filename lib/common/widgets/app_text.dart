import 'package:climate_platform_ui/features/theming/models/text_style_preset.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String value;
  final TextStylePreset? preset;
  final TextAlign? textAlign;
  final int? minLines;
  final int? maxLines;
  final bool? softWrap;

  final Color? overrideColor;

  const AppText({
    super.key,
    required this.value,
    this.preset,
    this.textAlign,
    this.minLines,
    this.maxLines,
    this.overrideColor,
    this.softWrap,
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
    } else {
      return style;
    }
  }

  @override
  Widget build(BuildContext context) {
    final minLines = this.minLines;
    return Text(
      // hacky, until solved: https://github.com/flutter/flutter/issues/31134
      minLines == null ? value : value + ('\n' * (minLines - 1)),
      textAlign: textAlign ?? TextAlign.left,
      style: _textStyle(context),
      maxLines: maxLines ?? minLines,
      softWrap: softWrap,
      overflow: TextOverflow.fade,
    );
  }
}
