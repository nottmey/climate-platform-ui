import 'package:climate_platform_ui/common/widgets/app_text.dart';
import 'package:climate_platform_ui/common/widgets/app_widget.dart';
import 'package:climate_platform_ui/features/database_browser/providers/available_databases_provider.dart';
import 'package:climate_platform_ui/features/database_browser/providers/selected_database_provider.dart';
import 'package:climate_platform_ui/features/theming/utils/context_theme_extension.dart';
import 'package:climate_platform_ui/features/theming/utils/spacing_utils_extension.dart';

class DatabaseSelectionDropdown extends AppWidget {
  const DatabaseSelectionDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = context.theme;
    return theme.spacedPadding(
      horizontal: 2,
      vertical: 1,
      child: DropdownButtonFormField<String>(
        decoration: const InputDecoration(
          labelText: 'Database',
          border: OutlineInputBorder(gapPadding: 4),
        ),
        onChanged: (value) =>
            ref.read(selectedDatabaseProvider.notifier).state = value,
        value: ref.watch(selectedDatabaseProvider),
        items: ref.watch(availableDatabasesProvider).when(
              loading: () => [
                const DropdownMenuItem(child: AppText(value: 'loading...')),
              ],
              error: (e, s) => [
                const DropdownMenuItem(child: AppText(value: 'error...')),
              ],
              data: (databases) => databases
                  .map(
                    (d) => DropdownMenuItem(
                      value: d,
                      child: AppText(value: d),
                    ),
                  )
                  .toList(),
            ),
      ),
    );
  }
}
