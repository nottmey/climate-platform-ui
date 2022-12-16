import 'package:artemis/artemis.dart';
import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/common/providers/databases_provider.dart';
import 'package:climate_platform_ui/common/providers/entities_provider_family.dart';
import 'package:climate_platform_ui/common/widgets/app_page.dart';
import 'package:climate_platform_ui/get_it.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OverviewPage extends ConsumerWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppPage(
      slivers: [
        SliverToBoxAdapter(
          child: ref.watch(databasesProvider).when(
                data: (data) => Column(
                  children: data
                      .map(
                        (e) => ListTile(
                          leading: const Icon(Icons.info_outline),
                          title: Text(e),
                          dense: true,
                        ),
                      )
                      .toList(),
                ),
                error: (e, s) => Text('error: $e'),
                loading: () => const Text('loading...'),
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
                                title: Text(e.data ?? ''),
                                dense: true,
                              ),
                            )
                            .toList(),
                      );
                    },
                    error: (e, s) => Text('error: $e'),
                    loading: () => const Text('loading...'),
                  ),
        ),
      ],
    );
  }
}
