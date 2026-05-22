import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:offline_sudoku/app/router/app_routes.dart';
import 'package:offline_sudoku/core/constants/app_dimensions.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_puzzle.dart';
import 'package:offline_sudoku/shared/animations/pressable_scale.dart';

class DifficultySelectionScreen extends StatefulWidget {
  const DifficultySelectionScreen({super.key});

  @override
  State<DifficultySelectionScreen> createState() =>
      _DifficultySelectionScreenState();
}

class _DifficultySelectionScreenState extends State<DifficultySelectionScreen> {
  SudokuDifficulty _selectedDifficulty = SudokuDifficulty.easy;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('New Game')),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isWide = constraints.maxWidth >= 780;
            final horizontalPadding = isWide
                ? AppDimensions.spacingXl
                : AppDimensions.spacingMd;

            return Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1040),
                child: CustomScrollView(
                  slivers: [
                    SliverPadding(
                      padding: EdgeInsets.fromLTRB(
                        horizontalPadding,
                        AppDimensions.spacingMd,
                        horizontalPadding,
                        AppDimensions.spacingXl,
                      ),
                      sliver: SliverList(
                        delegate: SliverChildListDelegate.fixed([
                          _DifficultyHeader(
                                selectedDifficulty: _selectedDifficulty,
                              )
                              .animate()
                              .fadeIn(duration: 240.ms)
                              .slideY(begin: .06, end: 0),
                          const SizedBox(height: AppDimensions.spacingLg),
                          _DifficultyCards(
                            isWide: isWide,
                            selectedDifficulty: _selectedDifficulty,
                            onSelected: (difficulty) {
                              setState(() {
                                _selectedDifficulty = difficulty;
                              });
                            },
                          ),
                          const SizedBox(height: AppDimensions.spacingLg),
                          FilledButton.icon(
                                onPressed: () => _startGame(context),
                                icon: const Icon(Icons.play_arrow_rounded),
                                label: Text(
                                  'Start ${_selectedDifficulty.label}',
                                ),
                              )
                              .animate(delay: 180.ms)
                              .fadeIn(duration: 220.ms)
                              .slideY(begin: .04, end: 0),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      backgroundColor: colorScheme.surface,
    );
  }

  void _startGame(BuildContext context) {
    context.go('${AppRoutes.game}?difficulty=${_selectedDifficulty.name}');
  }
}

class _DifficultyHeader extends StatelessWidget {
  const _DifficultyHeader({required this.selectedDifficulty});

  final SudokuDifficulty selectedDifficulty;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final details = selectedDifficulty.details;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
        border: Border.all(color: colorScheme.outlineVariant),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spacingLg),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 52,
              height: 52,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(AppDimensions.radiusSm),
              ),
              child: Icon(details.icon, color: colorScheme.onPrimaryContainer),
            ),
            const SizedBox(width: AppDimensions.spacingMd),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Choose your challenge',
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: AppDimensions.spacingXs),
                  Text(
                    details.summary,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DifficultyCards extends StatelessWidget {
  const _DifficultyCards({
    required this.isWide,
    required this.selectedDifficulty,
    required this.onSelected,
  });

  final bool isWide;
  final SudokuDifficulty selectedDifficulty;
  final ValueChanged<SudokuDifficulty> onSelected;

  @override
  Widget build(BuildContext context) {
    final cards = [
      for (final difficulty in SudokuDifficulty.values)
        _DifficultyCard(
          difficulty: difficulty,
          selected: selectedDifficulty == difficulty,
          onTap: () => onSelected(difficulty),
        ),
    ];

    if (!isWide) {
      return Column(
        children: [
          for (var index = 0; index < cards.length; index++) ...[
            cards[index]
                .animate(delay: (70 + index * 45).ms)
                .fadeIn(duration: 220.ms)
                .slideY(begin: .06, end: 0),
            if (index != cards.length - 1)
              const SizedBox(height: AppDimensions.spacingMd),
          ],
        ],
      );
    }

    return Wrap(
      spacing: AppDimensions.spacingMd,
      runSpacing: AppDimensions.spacingMd,
      children: [
        for (var index = 0; index < cards.length; index++)
          SizedBox(
            width: 328,
            child: cards[index]
                .animate(delay: (70 + index * 45).ms)
                .fadeIn(duration: 220.ms)
                .slideY(begin: .06, end: 0),
          ),
      ],
    );
  }
}

class _DifficultyCard extends StatelessWidget {
  const _DifficultyCard({
    required this.difficulty,
    required this.selected,
    required this.onTap,
  });

  final SudokuDifficulty difficulty;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final details = difficulty.details;

    return PressableScale(
      child: Material(
        color: selected
            ? colorScheme.primaryContainer
            : colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
        child: InkWell(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
          onTap: onTap,
          child: AnimatedContainer(
            duration: 180.ms,
            curve: Curves.easeOutCubic,
            padding: const EdgeInsets.all(AppDimensions.spacingMd),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
              border: Border.all(
                color: selected
                    ? colorScheme.primary
                    : colorScheme.outlineVariant,
                width: selected ? 2 : 1,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    _DifficultyIcon(icon: details.icon, selected: selected),
                    const SizedBox(width: AppDimensions.spacingMd),
                    Expanded(
                      child: Text(
                        difficulty.label,
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: selected
                              ? colorScheme.onPrimaryContainer
                              : colorScheme.onSurface,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    AnimatedOpacity(
                      duration: 160.ms,
                      opacity: selected ? 1 : 0,
                      child: Icon(
                        Icons.check_circle_rounded,
                        color: colorScheme.primary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppDimensions.spacingMd),
                Text(
                  details.description,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: selected
                        ? colorScheme.onPrimaryContainer.withValues(alpha: .78)
                        : colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: AppDimensions.spacingMd),
                _DifficultyMeter(level: details.level, selected: selected),
                const SizedBox(height: AppDimensions.spacingSm),
                Text(
                  details.footer,
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: selected
                        ? colorScheme.onPrimaryContainer.withValues(alpha: .74)
                        : colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _DifficultyIcon extends StatelessWidget {
  const _DifficultyIcon({required this.icon, required this.selected});

  final IconData icon;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: 48,
      height: 48,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: selected ? colorScheme.primary : colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(AppDimensions.radiusSm),
      ),
      child: Icon(
        icon,
        color: selected
            ? colorScheme.onPrimary
            : colorScheme.onSecondaryContainer,
      ),
    );
  }
}

class _DifficultyMeter extends StatelessWidget {
  const _DifficultyMeter({required this.level, required this.selected});

  final int level;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      children: [
        for (var index = 0; index < 5; index++)
          Expanded(
            child: AnimatedContainer(
              duration: 180.ms,
              height: 8,
              margin: EdgeInsets.only(
                right: index == 4 ? 0 : AppDimensions.spacing2xs,
              ),
              decoration: BoxDecoration(
                color: index < level
                    ? (selected ? colorScheme.primary : colorScheme.secondary)
                    : colorScheme.outlineVariant,
                borderRadius: BorderRadius.circular(AppDimensions.radiusXs),
              ),
            ),
          ),
      ],
    );
  }
}

extension _DifficultyDetailsExtension on SudokuDifficulty {
  String get label {
    return switch (this) {
      SudokuDifficulty.easy => 'Easy',
      SudokuDifficulty.medium => 'Medium',
      SudokuDifficulty.hard => 'Hard',
      SudokuDifficulty.expert => 'Expert',
      SudokuDifficulty.master => 'Master',
    };
  }

  _DifficultyDetails get details {
    return switch (this) {
      SudokuDifficulty.easy => const _DifficultyDetails(
        icon: Icons.spa_outlined,
        level: 1,
        summary: 'Easy keeps the board open and forgiving.',
        description: 'A relaxed puzzle with more givens and direct placements.',
        footer: 'Best for warmups',
      ),
      SudokuDifficulty.medium => const _DifficultyDetails(
        icon: Icons.adjust_rounded,
        level: 2,
        summary: 'Medium adds a little pressure without getting sharp.',
        description: 'Balanced puzzles with steady logic and fewer freebies.',
        footer: 'Best for daily play',
      ),
      SudokuDifficulty.hard => const _DifficultyDetails(
        icon: Icons.local_fire_department_outlined,
        level: 3,
        summary: 'Hard asks for patient scanning and stronger note discipline.',
        description: 'Fewer givens, tighter candidate work, and longer chains.',
        footer: 'Best for focus sessions',
      ),
      SudokuDifficulty.expert => const _DifficultyDetails(
        icon: Icons.psychology_alt_outlined,
        level: 4,
        summary: 'Expert rewards careful logic and clean board management.',
        description: 'Sparse openings with less obvious progress.',
        footer: 'Best for experienced solvers',
      ),
      SudokuDifficulty.master => const _DifficultyDetails(
        icon: Icons.diamond_outlined,
        level: 5,
        summary: 'Master is the full quiet mountain.',
        description: 'Minimal givens and demanding candidate pressure.',
        footer: 'Best for deep challenge',
      ),
    };
  }
}

class _DifficultyDetails {
  const _DifficultyDetails({
    required this.icon,
    required this.level,
    required this.summary,
    required this.description,
    required this.footer,
  });

  final IconData icon;
  final int level;
  final String summary;
  final String description;
  final String footer;
}
