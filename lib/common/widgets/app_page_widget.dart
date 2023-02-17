import 'package:climate_platform_ui/common/widgets/app_widget.dart';
import 'package:climate_platform_ui/features/theming/utils/context_theme_extension.dart';
import 'package:flutter/foundation.dart';

export 'package:climate_platform_ui/common/widgets/app_widget.dart'
    hide AppWidget;
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
            slivers: buildSlivers(context, ref),
          ),
        ),
      ),
    );
  }

  List<Widget> buildSlivers(BuildContext context, WidgetRef ref);
}
