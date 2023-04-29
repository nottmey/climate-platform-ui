import 'package:climate_platform_ui/common/widgets/app_widget.dart';

class AppError extends AppWidget {
  final Object error;
  final StackTrace stackTrace;

  const AppError({
    super.key,
    required this.error,
    required this.stackTrace,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Icon(Icons.error);
  }
}
