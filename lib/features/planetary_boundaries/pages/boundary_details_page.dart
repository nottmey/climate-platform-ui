import 'package:climate_platform_ui/common/models/entity_state.dart';
import 'package:climate_platform_ui/common/notifiers/entity_state_notifier.dart';
import 'package:climate_platform_ui/common/widgets/app_header_sliver.dart';
import 'package:climate_platform_ui/common/widgets/app_page_widget.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/models/planetary_boundary.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BoundaryDetailsPage extends AppPageWidget {
  final AutoDisposeStateNotifierProvider<EntityStateNotifier<PlanetaryBoundary>,
      EntityState<PlanetaryBoundary>> provider;

  const BoundaryDetailsPage({
    super.key,
    required this.provider,
  });

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    return [
      AppHeaderSliver(title: ref.watch(provider).value.name ?? '...'),
    ];
  }
}
