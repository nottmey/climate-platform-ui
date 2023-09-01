import 'package:climate/common/widgets/app_widget.dart';
import 'package:climate/features/breakpoints/models/window_size_class.dart';

class BreakpointBuilder extends AppWidget {
  final Widget Function(BuildContext, WindowSize) builder;

  const BreakpointBuilder({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return builder(context, WindowSize.fromConstraints(constraints));
      },
    );
  }
}
