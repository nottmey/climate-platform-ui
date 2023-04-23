import 'package:climate_platform_ui/common/widgets/app_card.dart';
import 'package:climate_platform_ui/common/widgets/app_text.dart';
import 'package:climate_platform_ui/common/widgets/app_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppDescriptionBlock extends AppWidget {
  final ProviderListenable<AsyncValue<String?>> provider;
  final Future<void> Function(String) onSave;

  const AppDescriptionBlock({
    super.key,
    required this.provider,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final editingState = useState(false);
    final editing = editingState.value;

    return ref.watch(provider).when(
          loading: () =>
              AppCard(builder: (_) => const CircularProgressIndicator()),
          error: (e, st) => AppCard(builder: (_) => const Icon(Icons.error)),
          data: (value) {
            final controller = useTextEditingController(text: value);
            ref.listen(provider, (previous, next) {
              final value = next.asData?.value;
              if (value != null) {
                // TODO solve conflict when user already updated local value
                controller.text = value;
              }
            });

            return AppCard(
              preset: AppCardPreset.filled,
              builder: (_) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (editing)
                      TextField(
                        controller: controller,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                      ),
                    // TODO use markdown renderer
                    if (!editing) AppText(value: value ?? ''),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (editing) {
                              onSave(controller.text);
                            }
                            editingState.value = !editing;
                          },
                          child: AppText(value: editing ? 'Save' : 'Edit'),
                        )
                      ],
                    ),
                  ],
                );
              },
            );
          },
        );
  }
}
