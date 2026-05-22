import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:offline_sudoku/app/router/app_routes.dart';
import 'package:offline_sudoku/core/constants/app_dimensions.dart';
import 'package:offline_sudoku/shared/animations/pressable_scale.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        title: const Text('Sudoku'),
        actions: [
          IconButton(
            tooltip: 'Settings',
            onPressed: () => context.go(AppRoutes.settings),
            icon: const Icon(Icons.settings_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isWide = constraints.maxWidth >= 720;

            return Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1040),
                child: CustomScrollView(
                  slivers: [
                    SliverPadding(
                      padding: EdgeInsets.fromLTRB(
                        isWide
                            ? AppDimensions.spacingXl
                            : AppDimensions.spacingMd,
                        AppDimensions.spacingMd,
                        isWide
                            ? AppDimensions.spacingXl
                            : AppDimensions.spacingMd,
                        AppDimensions.spacingXl,
                      ),
                      sliver: SliverList(
                        delegate: SliverChildListDelegate.fixed([
                          _HomeHeader(isWide: isWide)
                              .animate()
                              .fadeIn(duration: 260.ms)
                              .slideY(begin: .08, end: 0),
                          const SizedBox(height: AppDimensions.spacingLg),
                          _PrimaryAction(
                                title: 'New Game',
                                subtitle: 'Start a fresh puzzle',
                                icon: Icons.grid_4x4_rounded,
                                onTap: () =>
                                    context.go(AppRoutes.difficultySelection),
                              )
                              .animate(delay: 70.ms)
                              .fadeIn(duration: 260.ms)
                              .slideY(begin: .08, end: 0),
                          const SizedBox(height: AppDimensions.spacingLg),
                          _HomeActionGrid(isWide: isWide),
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
    );
  }
}

class _HomeHeader extends StatelessWidget {
  const _HomeHeader({required this.isWide});

  final bool isWide;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
        border: Border.all(color: colorScheme.outlineVariant),
      ),
      child: Padding(
        padding: EdgeInsets.all(
          isWide ? AppDimensions.spacingXl : AppDimensions.spacingLg,
        ),
        child: isWide
            ? Row(
                children: [
                  Expanded(child: _HeaderCopy(isWide: isWide)),
                  const SizedBox(width: AppDimensions.spacingXl),
                  const _BoardPreview(size: 184),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _HeaderCopy(isWide: isWide),
                  const SizedBox(height: AppDimensions.spacingLg),
                  const Center(child: _BoardPreview(size: 164)),
                ],
              ),
      ),
    );
  }
}

class _HeaderCopy extends StatelessWidget {
  const _HeaderCopy({required this.isWide});

  final bool isWide;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Offline Sudoku',
          style: theme.textTheme.headlineLarge?.copyWith(
            fontWeight: FontWeight.w800,
            color: colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: AppDimensions.spacingXs),
        Text(
          'A quiet, focused board for daily play.',
          style: theme.textTheme.bodyLarge?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

class _PrimaryAction extends StatelessWidget {
  const _PrimaryAction({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return PressableScale(
      child: Material(
        color: colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
        child: InkWell(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(AppDimensions.spacingLg),
            child: Row(
              children: [
                _ActionIcon(
                  icon: icon,
                  backgroundColor: colorScheme.primary,
                  foregroundColor: colorScheme.onPrimary,
                ),
                const SizedBox(width: AppDimensions.spacingMd),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: colorScheme.onPrimaryContainer,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: AppDimensions.spacing2xs),
                      Text(
                        subtitle,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: colorScheme.onPrimaryContainer.withValues(
                            alpha: .76,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_rounded,
                  color: colorScheme.onPrimaryContainer,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _HomeActionGrid extends StatelessWidget {
  const _HomeActionGrid({required this.isWide});

  final bool isWide;

  @override
  Widget build(BuildContext context) {
    const actions = [
      _HomeActionData(
        title: 'Daily Challenge',
        subtitle: 'Today',
        icon: Icons.calendar_today_outlined,
        route: AppRoutes.dailyChallenge,
      ),
      _HomeActionData(
        title: 'Statistics',
        subtitle: 'Progress',
        icon: Icons.bar_chart_rounded,
        route: AppRoutes.stats,
      ),
      _HomeActionData(
        title: 'Achievements',
        subtitle: 'Milestones',
        icon: Icons.emoji_events_outlined,
        route: AppRoutes.achievements,
      ),
      _HomeActionData(
        title: 'Settings',
        subtitle: 'Preferences',
        icon: Icons.tune_rounded,
        route: AppRoutes.settings,
      ),
    ];

    return GridView.builder(
      itemCount: actions.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isWide ? 4 : 2,
        crossAxisSpacing: AppDimensions.spacingMd,
        mainAxisSpacing: AppDimensions.spacingMd,
        childAspectRatio: isWide ? 1.12 : .86,
      ),
      itemBuilder: (context, index) {
        final action = actions[index];
        return _HomeActionTile(action: action)
            .animate(delay: (120 + index * 45).ms)
            .fadeIn(duration: 240.ms)
            .slideY(begin: .08, end: 0);
      },
    );
  }
}

class _HomeActionTile extends StatelessWidget {
  const _HomeActionTile({required this.action});

  final _HomeActionData action;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return PressableScale(
      child: Material(
        color: colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
        child: InkWell(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
          onTap: () => context.go(action.route),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
              border: Border.all(color: colorScheme.outlineVariant),
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppDimensions.spacingMd),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _ActionIcon(
                    icon: action.icon,
                    backgroundColor: colorScheme.secondaryContainer,
                    foregroundColor: colorScheme.onSecondaryContainer,
                  ),
                  const Spacer(),
                  Text(
                    action.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w800,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: AppDimensions.spacing2xs),
                  Text(
                    action.subtitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ActionIcon extends StatelessWidget {
  const _ActionIcon({
    required this.icon,
    required this.backgroundColor,
    required this.foregroundColor,
  });

  final IconData icon;
  final Color backgroundColor;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(AppDimensions.radiusSm),
      ),
      child: Icon(icon, color: foregroundColor),
    );
  }
}

class _BoardPreview extends StatelessWidget {
  const _BoardPreview({required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SizedBox.square(
      dimension: size,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: BorderRadius.circular(AppDimensions.radiusSm),
          border: Border.all(color: colorScheme.outline, width: 2),
        ),
        child: GridView.builder(
          padding: const EdgeInsets.all(AppDimensions.spacingXs),
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 9,
          ),
          itemCount: 81,
          itemBuilder: (context, index) {
            final row = index ~/ 9;
            final column = index % 9;
            final emphasized = row == 1 || column == 4;
            final value = _previewValues[index];

            return DecoratedBox(
              decoration: BoxDecoration(
                color: emphasized
                    ? colorScheme.primaryContainer.withValues(alpha: .55)
                    : colorScheme.surface,
                border: Border(
                  right: BorderSide(
                    color: (column + 1) % 3 == 0
                        ? colorScheme.outline
                        : colorScheme.outlineVariant,
                    width: (column + 1) % 3 == 0 ? 1.4 : .5,
                  ),
                  bottom: BorderSide(
                    color: (row + 1) % 3 == 0
                        ? colorScheme.outline
                        : colorScheme.outlineVariant,
                    width: (row + 1) % 3 == 0 ? 1.4 : .5,
                  ),
                ),
              ),
              child: Center(
                child: value == 0
                    ? const SizedBox.shrink()
                    : Text(
                        '$value',
                        style: TextStyle(
                          color: colorScheme.onSurface,
                          fontSize: size / 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _HomeActionData {
  const _HomeActionData({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.route,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final String route;
}

const _previewValues = [
  5,
  3,
  0,
  0,
  7,
  0,
  0,
  0,
  0,
  6,
  0,
  0,
  1,
  9,
  5,
  0,
  0,
  0,
  0,
  9,
  8,
  0,
  0,
  0,
  0,
  6,
  0,
  8,
  0,
  0,
  0,
  6,
  0,
  0,
  0,
  3,
  4,
  0,
  0,
  8,
  0,
  3,
  0,
  0,
  1,
  7,
  0,
  0,
  0,
  2,
  0,
  0,
  0,
  6,
  0,
  6,
  0,
  0,
  0,
  0,
  2,
  8,
  0,
  0,
  0,
  0,
  4,
  1,
  9,
  0,
  0,
  5,
  0,
  0,
  0,
  0,
  8,
  0,
  0,
  7,
  9,
];
