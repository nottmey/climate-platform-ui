import 'package:climate/common/widgets/app_widget.dart';

class AppLoading extends AppWidget {
  const AppLoading({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const CircularProgressIndicator();
  }
}
