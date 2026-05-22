import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offline_sudoku/app/theme/theme_controller.dart';
import 'package:offline_sudoku/core/constants/app_colors.dart';
import 'package:offline_sudoku/core/constants/app_dimensions.dart';
import 'package:offline_sudoku/shared/widgets/app_scaffold.dart';

class ThemesScreen extends ConsumerWidget {
  const ThemesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeState = ref.watch(themeControllerProvider);
    final controller = ref.read(themeControllerProvider.notifier);

    return AppScaffold(
      title: 'Themes',
      child: ListView(
        children: [
          SegmentedButton<ThemeMode>(
            segments: const [
              ButtonSegment(value: ThemeMode.system, label: Text('System')),
              ButtonSegment(value: ThemeMode.light, label: Text('Light')),
              ButtonSegment(value: ThemeMode.dark, label: Text('Dark')),
            ],
            selected: {themeState.themeMode},
            onSelectionChanged: (selection) {
              controller.setThemeMode(selection.single);
            },
          ),
          const SizedBox(height: AppDimensions.spacingLg),
          Wrap(
            spacing: AppDimensions.spacingSm,
            runSpacing: AppDimensions.spacingSm,
            children: [
              _ColorSwatch(
                color: AppColors.defaultSeed,
                selected: themeState.seedColor == AppColors.defaultSeed,
                onTap: () => controller.setSeedColor(AppColors.defaultSeed),
              ),
              _ColorSwatch(
                color: AppColors.note,
                selected: themeState.seedColor == AppColors.note,
                onTap: () => controller.setSeedColor(AppColors.note),
              ),
              _ColorSwatch(
                color: AppColors.success,
                selected: themeState.seedColor == AppColors.success,
                onTap: () => controller.setSeedColor(AppColors.success),
              ),
            ],
          ),
          const SizedBox(height: AppDimensions.spacingLg),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('Reduced motion'),
            value: themeState.reduceMotion,
            onChanged: (value) => controller.setReduceMotion(value: value),
          ),
        ],
      ),
    );
  }
}

class _ColorSwatch extends StatelessWidget {
  const _ColorSwatch({
    required this.color,
    required this.selected,
    required this.onTap,
  });

  final Color color;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      selected: selected,
      child: InkWell(
        borderRadius: BorderRadius.circular(AppDimensions.radiusSm),
        onTap: onTap,
        child: Ink(
          width: 52,
          height: 52,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(AppDimensions.radiusSm),
            border: Border.all(
              color: selected
                  ? Theme.of(context).colorScheme.onSurface
                  : Theme.of(context).colorScheme.outlineVariant,
              width: selected ? 3 : 1,
            ),
          ),
        ),
      ),
    );
  }
}
