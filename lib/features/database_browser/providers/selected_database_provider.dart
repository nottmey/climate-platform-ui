import 'package:climate_platform_ui/common/widgets/app_page_widget.dart';
import 'package:climate_platform_ui/features/database_browser/providers/available_databases_provider.dart';
import 'package:collection/collection.dart';

final selectedDatabaseProvider = StateProvider<String?>((ref) {
  ref.listen(availableDatabasesProvider, (previous, next) {
    final defaultValue = next.asData?.value.firstOrNull;
    if (ref.controller.state == null && defaultValue != null) {
      ref.controller.state = defaultValue;
    }
  });
  return null;
});
