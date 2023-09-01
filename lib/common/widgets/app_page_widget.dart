import 'package:climate/common/widgets/app_widget.dart';
import 'package:climate/features/theming/utils/context_theme_extension.dart';
import 'package:flutter/foundation.dart';

export 'package:climate/common/widgets/app_widget.dart' hide AppWidget;
export 'package:flutter_hooks/flutter_hooks.dart';
export 'package:hooks_riverpod/hooks_riverpod.dart'
    show
        AsyncData,
        AsyncError,
        AsyncLoading,
        AsyncValue,
        AsyncValueX,
        WidgetRef;

abstract class AppPageWidget extends AppWidget {
  const AppPageWidget({super.key});

  @override
  @nonVirtual
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO refresh page via provider/controller refresh, not via hard rerender
    final refreshIndicator = useState(0);
    return ColoredBox(
      key: ValueKey(refreshIndicator.value),
      color: context.theme.colorScheme.background,
      child: Scrollbar(
        child: RefreshIndicator(
          onRefresh: () async {
            refreshIndicator.value = refreshIndicator.value + 1;
          },
          child: CustomScrollView(
            primary: true,
            slivers: buildSlivers(context, ref),
          ),
        ),
      ),
    );
  }

  List<Widget> buildSlivers(BuildContext context, WidgetRef ref);
}
