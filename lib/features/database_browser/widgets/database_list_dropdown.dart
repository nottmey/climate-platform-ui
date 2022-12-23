import 'package:climate_platform_ui/common/widgets/app_widget.dart';
import 'package:climate_platform_ui/features/theming/utils/context_theme_extension.dart';
import 'package:climate_platform_ui/features/theming/utils/spacing_utils_extension.dart';

class DatabaseListDropdown extends AppWidget {
  const DatabaseListDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = context.theme;
    return theme.spacedPadding(
      horizontal: 2,
      vertical: 1,
      child: const Text('dropdown'),
    );
  }
}
