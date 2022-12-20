import 'package:climate_platform_ui/common/providers/databases_provider.dart';
import 'package:climate_platform_ui/common/providers/entities_provider_family.dart';
import 'package:climate_platform_ui/common/widgets/app_text.dart';
import 'package:climate_platform_ui/features/navigation/widgets/main_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DevMenuPage extends ConsumerWidget {
  const DevMenuPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        const MainTopBar(title: 'Dev Menu'),
        SliverToBoxAdapter(
          child: ref.watch(databasesProvider).when(
                data: (data) => Column(
                  children: data
                      .map(
                        (e) => ListTile(
                          leading: const Icon(Icons.info_outline),
                          title: AppText(value: e),
                          dense: true,
                        ),
                      )
                      .toList(),
                ),
                error: (e, s) => AppText(value: 'error: $e'),
                loading: () => const AppText(value: 'loading...'),
              ),
        ),
        SliverToBoxAdapter(
          child:
              ref.watch(entitiesProviderFamily('datomic-docs-tutorial')).when(
                    data: (data) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: data
                            .map(
                              (e) => ListTile(
                                title: AppText(value: e.data ?? ''),
                                dense: true,
                              ),
                            )
                            .toList(),
                      );
                    },
                    error: (e, s) => AppText(value: 'error: $e'),
                    loading: () => const AppText(value: 'loading...'),
                  ),
        ),
      ],
    );
  }
}
