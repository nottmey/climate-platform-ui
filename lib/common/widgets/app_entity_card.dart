import 'package:climate_platform_ui/common/widgets/app_card.dart';
import 'package:climate_platform_ui/common/widgets/app_text.dart';
import 'package:climate_platform_ui/common/widgets/app_widget.dart';
import 'package:climate_platform_ui/features/theming/models/text_style_preset.dart';
import 'package:climate_platform_ui/features/theming/utils/context_theme_extension.dart';
import 'package:climate_platform_ui/features/theming/utils/spacing_utils_extension.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AppEntityCard extends AppWidget {
  final void Function()? onTab;

  const AppEntityCard({super.key, this.onTab});

  Widget buildCreating() {
    return const Center(
      child: Icon(Icons.add),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataState = useState<String?>(null);
    final editingState = useState<bool>(false);

    final theme = context.theme;
    final data = dataState.value;
    final editing = editingState.value;
    final creating = data == null && !editing;

    final preset = data == null && !editing
        ? AppCardPreset.outlined
        : AppCardPreset.elevated;

    Widget buildEditing() {
      // TODO try out https://pub.dev/packages/reactive_forms_generator
      return ReactiveFormBuilder(
        form: () => FormGroup({
          'title': FormControl<String>(
            value: data,
            validators: [Validators.required],
          )
        }),
        builder: (context, form, child) {
          void save() {
            dataState.value = form.value['title'] as String?;
            editingState.value = false;
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ReactiveTextField<String>(
                formControlName: 'title',
                decoration: const InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(gapPadding: 4),
                ),
                validationMessages: {
                  ValidationMessage.required: (_) => 'Title must not be empty',
                },
                onSubmitted: (_) => save(),
              ),
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

    Widget buildDisplaying() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            value: data ?? '',
            preset: TextStylePreset.titleLarge,
          ),
        ],
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
              : onTab,
      actions: creating || editing
          ? null
          : [
              AppCardAction(
                label: 'Edit',
                onSelected: () => editingState.value = true,
              ),
              AppCardAction(
                label: 'Delete',
                color: theme.errorColor,
                onSelected: () {
                  dataState.value = null;
                },
              ),
            ],
      child: creating
          ? buildCreating()
          : editing
              ? buildEditing()
              : buildDisplaying(),
    );
  }
}
