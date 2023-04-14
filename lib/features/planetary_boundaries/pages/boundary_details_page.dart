import 'package:climate_platform_ui/common/models/entity_state.dart';
import 'package:climate_platform_ui/common/notifiers/entity_state_notifier.dart';
import 'package:climate_platform_ui/common/widgets/app_card.dart';
import 'package:climate_platform_ui/common/widgets/app_header_sliver.dart';
import 'package:climate_platform_ui/common/widgets/app_page_widget.dart';
import 'package:climate_platform_ui/common/widgets/app_text.dart';
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
    final boundary = ref.watch(provider).value;
    final controller = useTextEditingController(text: boundary.description);
    ref.listen(provider, (previous, next) {
      // TODO solve conflict when user already updated local value
      final externallyUpdatedDescription = next.value.description;
      if (externallyUpdatedDescription != null) {
        controller.text = externallyUpdatedDescription;
      }
    });

    return [
      AppHeaderSliver(title: boundary.name ?? '...'),

      // TODO make this a single card functionality
      SliverToBoxAdapter(
        child: AppCard(
          preset: AppCardPreset.filled,
          builder: (_) {
            return AppText(
              value: boundary.description ?? '<no description>',
            );
          },
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: controller,
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
              ElevatedButton(
                onPressed: () {
                  ref
                      .read(provider.notifier)
                      .update(boundary.copyWith(description: controller.text));
                },
                child: const AppText(value: 'Save'),
              )
            ],
          ),
        ),
      )
    ];
  }
}
