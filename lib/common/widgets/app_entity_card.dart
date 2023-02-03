import 'package:climate_platform_ui/common/widgets/app_card.dart';
import 'package:climate_platform_ui/common/widgets/app_widget.dart';
import 'package:climate_platform_ui/features/theming/utils/context_theme_extension.dart';
import 'package:climate_platform_ui/features/theming/utils/spacing_utils_extension.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AppEntityCard<T> extends AppWidget {
  final T Function(FormGroup form) onSave;
  final void Function(T data)? onTab;
  final FormGroup Function(T? data) formControlBuilder;
  final List<Widget> Function(void Function() save) formBuilder;
  final Widget Function(T data) dataBuilder;

  const AppEntityCard({
    super.key,
    required this.formControlBuilder,
    required this.onSave,
    this.onTab,
    required this.formBuilder,
    required this.dataBuilder,
  });

  Widget buildCreating() {
    return const Center(
      child: Icon(Icons.add),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataState = useState<T?>(null);
    final editingState = useState<bool>(false);

    final theme = context.theme;
    final data = dataState.value;
    final editing = editingState.value;
    final creating = data == null && !editing;

    final preset = data == null && !editing
        ? AppCardPreset.outlined
        : AppCardPreset.elevated;

    Widget buildEditing() {
      return ReactiveFormBuilder(
        form: () => formControlBuilder(data),
        builder: (context, form, child) {
          void save() {
            dataState.value = onSave(form);
            editingState.value = false;
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ...formBuilder(save),
              theme.spacedSizedBox(height: 1),
              ReactiveFormConsumer(
                builder: (context, form, child) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: theme.colorScheme.onPrimary,
                      backgroundColor: theme.colorScheme.primary,
                    ),
                    onPressed: form.invalid ? null : save,
                    child: const Text('Submit'),
                  );
                },
              ),
            ],
          );
        },
      );
    }

    // TODO animate size and fade when content changes
    // example: https://pub.dev/packages/animated_size_and_fade
    return AppCard(
      preset: preset,
      onTab: editing
          ? null
          : data == null
              ? () => editingState.value = true
              : onTab == null
                  ? null
                  : () => onTab!(data),
      actions: creating || editing
          ? null
          : [
              AppCardAction(
                label: 'Edit',
                onSelected: () => editingState.value = true,
              ),
              AppCardAction(
                label: 'Delete',
                color: theme.colorScheme.error,
                onSelected: () {
                  dataState.value = null;
                },
              ),
            ],
      child: creating
          ? buildCreating()
          : editing
              ? buildEditing()
              : dataBuilder(data as T),
    );
  }
}
