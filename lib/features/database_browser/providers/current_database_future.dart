import 'package:climate_platform_ui/common/widgets/app_page_widget.dart';
import 'package:climate_platform_ui/features/database_browser/providers/available_databases_provider.dart';
import 'package:climate_platform_ui/features/database_browser/providers/selected_database_provider.dart';

final currentDatabaseProvider = FutureProvider<String>((ref) async {
  final selectedDatabase = ref.watch(selectedDatabaseProvider);
  if (selectedDatabase != null) {
    return Future.value(selectedDatabase);
  } else {
    return ref.read(availableDatabasesProvider.future).then((v) => v.first);
  }
});
