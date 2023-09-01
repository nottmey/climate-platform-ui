import 'package:climate/common/widgets/app_card.dart';
import 'package:climate/common/widgets/app_error.dart';
import 'package:climate/common/widgets/app_loading.dart';
import 'package:climate/common/widgets/app_text.dart';
import 'package:climate/common/widgets/app_widget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
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
          loading: () => AppCard(builder: (_) => const AppLoading()),
          error: (error, stackTrace) => AppCard(
            builder: (_) => AppError(error, stackTrace),
          ),
          data: (description) {
            final controller = useTextEditingController(text: description);
            ref.listen(provider, (_, nextAsyncDescription) {
              final value = nextAsyncDescription.asData?.value;
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
                    if (!editing)
                      Markdown(
                        data: description ?? '',
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                      ),
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
                        ),
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
