import 'package:climate_platform_ui/features/theming/themes/default_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final themeProvider = StateProvider((ref) => defaultTheme());
