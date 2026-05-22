import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:offline_sudoku/app/providers/core_providers.dart';
import 'package:offline_sudoku/app/router/app_routes.dart';
import 'package:offline_sudoku/core/constants/app_dimensions.dart';
import 'package:offline_sudoku/features/gameplay/application/providers/game_controller.dart';
import 'package:offline_sudoku/features/gameplay/application/providers/timer_controller.dart';
import 'package:offline_sudoku/features/gameplay/domain/entities/game_session.dart';
import 'package:offline_sudoku/features/sudoku_engine/application/providers/sudoku_engine_providers.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_cell.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_puzzle.dart';
import 'package:offline_sudoku/shared/animations/pressable_scale.dart';

class GameScreen extends ConsumerStatefulWidget {
  const GameScreen({super.key, this.difficultyName});

  final String? difficultyName;

  @override
  ConsumerState<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends ConsumerState<GameScreen> {
  bool _initialized = false;
  bool _victoryShown = false;
  int? _invalidCellIndex;
  int _invalidPulse = 0;
  int? _validCellIndex;
  int _validPulse = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _ensureGameStarted());
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<GameSessionStatus?>(gameStatusProvider, (previous, next) {
      if (next != GameSessionStatus.completed) {
        _victoryShown = false;
        return;
      }
      if (_victoryShown) {
        return;
      }
      _victoryShown = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          unawaited(_showVictoryDialog());
        }
      });
    });

    final gameState = ref.watch(gameControllerProvider);
    final session = gameState.asData?.value;

    return Scaffold(
      appBar: AppBar(
        title: Text(session?.puzzle.difficulty.label ?? 'Sudoku'),
        leading: IconButton(
          tooltip: 'Pause',
          onPressed: session == null ? null : _showPauseDialog,
          icon: const Icon(Icons.pause_rounded),
        ),
        actions: [
          IconButton(
            tooltip: 'Restart',
            onPressed: session == null ? null : _confirmRestart,
            icon: const Icon(Icons.restart_alt_rounded),
          ),
        ],
      ),
      body: SafeArea(
        child: gameState.when(
          data: (session) {
            if (session == null) {
              return const Center(child: CircularProgressIndicator());
            }
            return _GameContent(
              invalidCellIndex: _invalidCellIndex,
              invalidPulse: _invalidPulse,
              validCellIndex: _validCellIndex,
              validPulse: _validPulse,
              onNumberPressed: _handleNumberPressed,
              onHintPressed: _handleHintPressed,
            );
          },
          error: (error, stackTrace) => _GameError(
            message: error.toString(),
            onRetry: _ensureGameStarted,
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }

  Future<void> _ensureGameStarted() async {
    if (_initialized || !mounted) {
      return;
    }
    _initialized = true;

    final current = ref.read(gameControllerProvider).asData?.value;
    if (current != null && widget.difficultyName == null) {
      if (current.status == GameSessionStatus.playing) {
        ref.read(gameTimerControllerProvider.notifier).resume();
      }
      return;
    }

    await ref
        .read(gameControllerProvider.notifier)
        .startNewGame(difficulty: _difficultyFromRoute());
  }

  SudokuDifficulty _difficultyFromRoute() {
    final name = widget.difficultyName;
    if (name == null) {
      return SudokuDifficulty.easy;
    }

    return SudokuDifficulty.values.firstWhere(
      (difficulty) => difficulty.name == name,
      orElse: () => SudokuDifficulty.easy,
    );
  }

  void _handleNumberPressed(int value) {
    final selectedCell = ref.read(selectedCellProvider);
    if (selectedCell == null || !selectedCell.canEdit) {
      unawaited(ref.read(audioServiceProvider).tap());
      return;
    }

    final isInvalid =
        !ref.read(notesModeProvider) && value != selectedCell.solution;
    ref.read(gameControllerProvider.notifier).placeNumber(value);

    if (isInvalid) {
      unawaited(ref.read(audioServiceProvider).invalidMove());
      setState(() {
        _invalidCellIndex = selectedCell.index;
        _invalidPulse++;
      });
      return;
    }

    final completed =
        ref.read(gameControllerProvider).asData?.value?.isCompleted ?? false;
    if (completed) {
      unawaited(ref.read(audioServiceProvider).victory());
    } else {
      unawaited(ref.read(audioServiceProvider).validInput());
    }

    setState(() {
      _validCellIndex = selectedCell.index;
      _validPulse++;
    });
  }

  void _handleHintPressed() {
    final cells = ref.read(gameCellsProvider);
    if (cells.isEmpty) {
      return;
    }

    final board = cells.map<int?>((cell) => cell.value).toList(growable: false);
    final hint = ref.read(sudokuHintEngineProvider).nextHint(board);
    if (hint == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No hint available for this board.')),
      );
      return;
    }

    ref.read(gameControllerProvider.notifier).applyHint(hint);
  }

  Future<void> _showPauseDialog() async {
    ref.read(gameControllerProvider.notifier).pause();

    final resume = await _showAnimatedGameDialog<bool>(
      context: context,
      barrierDismissible: false,
      child: AlertDialog(
        title: const Text('Paused'),
        content: const Text('Take your time. The timer is stopped.'),
        actions: [
          TextButton(
            onPressed: () {
              context.go(AppRoutes.home);
            },
            child: const Text('Home'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Resume'),
          ),
        ],
      ),
    );

    if (mounted && resume == true) {
      ref.read(gameControllerProvider.notifier).resume();
    }
  }

  Future<void> _confirmRestart() async {
    final restart = await _showAnimatedGameDialog<bool>(
      context: context,
      child: AlertDialog(
        title: const Text('Restart puzzle?'),
        content: const Text('Your current progress on this puzzle will reset.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Restart'),
          ),
        ],
      ),
    );

    if (restart == true) {
      ref.read(gameControllerProvider.notifier).restartCurrentPuzzle();
    }
  }

  Future<void> _showVictoryDialog() async {
    final elapsed = ref.read(gameTimerLabelProvider);
    final mistakes = ref.read(mistakesProvider);
    ref.read(gameTimerControllerProvider.notifier).pause();

    await _showAnimatedGameDialog<void>(
      context: context,
      barrierDismissible: false,
      child: _VictoryDialog(
        elapsed: elapsed,
        mistakes: mistakes,
        onHome: () => context.go(AppRoutes.home),
        onNewGame: () => context.go(AppRoutes.difficultySelection),
      ),
    );
  }
}

Future<T?> _showAnimatedGameDialog<T>({
  required BuildContext context,
  required Widget child,
  bool barrierDismissible = true,
}) {
  return showGeneralDialog<T>(
    context: context,
    barrierDismissible: barrierDismissible,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: Colors.black54,
    transitionDuration: 240.ms,
    pageBuilder: (context, animation, secondaryAnimation) {
      return Center(
        child: Material(color: Colors.transparent, child: child),
      );
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      final curved = CurvedAnimation(
        parent: animation,
        curve: Curves.easeOutBack,
        reverseCurve: Curves.easeInCubic,
      );

      return FadeTransition(
        opacity: animation,
        child: ScaleTransition(
          scale: Tween<double>(begin: .94, end: 1).animate(curved),
          child: child,
        ),
      );
    },
  );
}

class _GameContent extends ConsumerWidget {
  const _GameContent({
    required this.invalidCellIndex,
    required this.invalidPulse,
    required this.validCellIndex,
    required this.validPulse,
    required this.onNumberPressed,
    required this.onHintPressed,
  });

  final int? invalidCellIndex;
  final int invalidPulse;
  final int? validCellIndex;
  final int validPulse;
  final ValueChanged<int> onNumberPressed;
  final VoidCallback onHintPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constraints = MediaQuery.sizeOf(context);
    final isWide = constraints.width >= 820;

    if (isWide) {
      return Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1120),
          child: Padding(
            padding: const EdgeInsets.all(AppDimensions.spacingLg),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 6,
                  child: _SudokuBoard(
                    invalidCellIndex: invalidCellIndex,
                    invalidPulse: invalidPulse,
                    validCellIndex: validCellIndex,
                    validPulse: validPulse,
                  ),
                ),
                const SizedBox(width: AppDimensions.spacingXl),
                SizedBox(
                  width: 340,
                  child: _GameControls(
                    showStatus: true,
                    onNumberPressed: onNumberPressed,
                    onHintPressed: onHintPressed,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppDimensions.spacingMd,
        AppDimensions.spacingSm,
        AppDimensions.spacingMd,
        AppDimensions.spacingMd,
      ),
      child: Column(
        children: [
          const _GameStatusBar(),
          const SizedBox(height: AppDimensions.spacingMd),
          Expanded(
            child: Center(
              child: _SudokuBoard(
                invalidCellIndex: invalidCellIndex,
                invalidPulse: invalidPulse,
                validCellIndex: validCellIndex,
                validPulse: validPulse,
              ),
            ),
          ),
          const SizedBox(height: AppDimensions.spacingMd),
          _GameControls(
            showStatus: false,
            onNumberPressed: onNumberPressed,
            onHintPressed: onHintPressed,
          ),
        ],
      ),
    );
  }
}

class _GameStatusBar extends ConsumerWidget {
  const _GameStatusBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timer = ref.watch(gameTimerLabelProvider);
    final mistakes = ref.watch(mistakesProvider);
    final hints = ref.watch(hintsUsedProvider);

    return Row(
      children: [
        Expanded(
          child: _StatusChip(icon: Icons.timer_outlined, label: timer),
        ),
        const SizedBox(width: AppDimensions.spacingXs),
        Expanded(
          child: _StatusChip(
            icon: Icons.close_rounded,
            label: '$mistakes mistakes',
          ),
        ),
        const SizedBox(width: AppDimensions.spacingXs),
        Expanded(
          child: _StatusChip(
            icon: Icons.lightbulb_outline_rounded,
            label: '$hints hints',
          ),
        ),
      ],
    );
  }
}

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(AppDimensions.radiusSm),
        border: Border.all(color: colorScheme.outlineVariant),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.spacingSm,
          vertical: AppDimensions.spacingXs,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 18, color: colorScheme.onSurfaceVariant),
            const SizedBox(width: AppDimensions.spacing2xs),
            Flexible(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(
                  context,
                ).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w800),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SudokuBoard extends StatelessWidget {
  const _SudokuBoard({
    required this.invalidCellIndex,
    required this.invalidPulse,
    required this.validCellIndex,
    required this.validPulse,
  });

  final int? invalidCellIndex;
  final int invalidPulse;
  final int? validCellIndex;
  final int validPulse;

  @override
  Widget build(BuildContext context) {
    final shortestSide = MediaQuery.sizeOf(context).shortestSide;
    final maxBoardSize = math.min(shortestSide - 32, 560.0).clamp(280.0, 560.0);
    final colorScheme = Theme.of(context).colorScheme;

    return Center(
      child: SizedBox.square(
        dimension: maxBoardSize,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: colorScheme.surface,
            borderRadius: BorderRadius.circular(AppDimensions.radiusSm),
            border: Border.all(color: colorScheme.outline, width: 2),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppDimensions.radiusSm),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 9,
              ),
              itemCount: 81,
              itemBuilder: (context, index) {
                return _SudokuCellTile(
                  index: index,
                  invalidPulse: invalidCellIndex == index ? invalidPulse : 0,
                  validPulse: validCellIndex == index ? validPulse : 0,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _SudokuCellTile extends ConsumerWidget {
  const _SudokuCellTile({
    required this.index,
    required this.invalidPulse,
    required this.validPulse,
  });

  final int index;
  final int invalidPulse;
  final int validPulse;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cell = ref.watch(gameCellProvider(index));
    final selectedIndex = ref.watch(selectedCellIndexProvider);
    final peerIndexes = ref.watch(selectedPeerIndexesProvider);
    final cells = ref.watch(gameCellsProvider);
    final colorScheme = Theme.of(context).colorScheme;

    if (cell == null) {
      return const SizedBox.shrink();
    }

    final selected = selectedIndex == index;
    final peer = peerIndexes.contains(index);
    final duplicate = _hasDuplicate(cell, cells);
    final wrongValue = cell.value != null && !cell.isCorrect;
    final row = index ~/ 9;
    final column = index % 9;

    return TweenAnimationBuilder<double>(
      key: ValueKey('invalid-$index-$invalidPulse'),
      tween: Tween(begin: invalidPulse > 0 ? 1 : 0, end: 0),
      duration: 320.ms,
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        final dx = math.sin(value * math.pi * 6) * 4 * value;
        return TweenAnimationBuilder<double>(
          key: ValueKey('valid-$index-$validPulse'),
          tween: Tween(begin: validPulse > 0 ? 1 : 0, end: 0),
          duration: 260.ms,
          curve: Curves.easeOutCubic,
          builder: (context, scaleValue, scaleChild) {
            return Transform.translate(
              offset: Offset(dx, 0),
              child: Transform.scale(
                scale: 1 + (.08 * scaleValue),
                child: scaleChild,
              ),
            );
          },
          child: child,
        );
      },
      child: AnimatedContainer(
        duration: 160.ms,
        curve: Curves.easeOutCubic,
        color: _cellColor(
          colorScheme: colorScheme,
          selected: selected,
          peer: peer,
          duplicate: duplicate,
          wrongValue: wrongValue,
        ),
        child: InkWell(
          onTap: () {
            unawaited(ref.read(audioServiceProvider).tap());
            ref.read(gameControllerProvider.notifier).selectCell(index);
          },
          child: DecoratedBox(
            decoration: BoxDecoration(
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
            child: _CellContent(cell: cell, wrongValue: wrongValue),
          ),
        ),
      ),
    );
  }

  bool _hasDuplicate(SudokuCell cell, List<SudokuCell> cells) {
    final value = cell.value;
    if (value == null) {
      return false;
    }

    return cells.any(
      (other) =>
          other.index != cell.index &&
          other.value == value &&
          (other.row == cell.row ||
              other.column == cell.column ||
              other.box == cell.box),
    );
  }

  Color _cellColor({
    required ColorScheme colorScheme,
    required bool selected,
    required bool peer,
    required bool duplicate,
    required bool wrongValue,
  }) {
    if (wrongValue || duplicate) {
      return colorScheme.errorContainer.withValues(alpha: .72);
    }
    if (selected) {
      return colorScheme.primaryContainer;
    }
    if (peer) {
      return colorScheme.secondaryContainer.withValues(alpha: .55);
    }
    return colorScheme.surface;
  }
}

class _CellContent extends StatelessWidget {
  const _CellContent({required this.cell, required this.wrongValue});

  final SudokuCell cell;
  final bool wrongValue;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    if (cell.value != null) {
      return Center(
        child: Text(
          '${cell.value}',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: cell.isGiven ? FontWeight.w900 : FontWeight.w700,
            color: wrongValue
                ? colorScheme.onErrorContainer
                : cell.isGiven
                ? colorScheme.onSurface
                : colorScheme.primary,
          ),
        ),
      );
    }

    if (cell.notes.isEmpty) {
      return const SizedBox.shrink();
    }

    return GridView.builder(
      padding: const EdgeInsets.all(2),
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: 9,
      itemBuilder: (context, noteIndex) {
        final value = noteIndex + 1;
        return Center(
          child: Text(
            cell.notes.contains(value) ? '$value' : '',
            style: theme.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        );
      },
    );
  }
}

class _GameControls extends ConsumerWidget {
  const _GameControls({
    required this.showStatus,
    required this.onNumberPressed,
    required this.onHintPressed,
  });

  final bool showStatus;
  final ValueChanged<int> onNumberPressed;
  final VoidCallback onHintPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notesMode = ref.watch(notesModeProvider);
    final canUndo = ref.watch(canUndoProvider);
    final canRedo = ref.watch(canRedoProvider);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showStatus) ...[
          const _GameStatusBar(),
          const SizedBox(height: AppDimensions.spacingMd),
        ],
        GridView.builder(
          itemCount: 9,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 9,
            crossAxisSpacing: AppDimensions.spacingXs,
            mainAxisSpacing: AppDimensions.spacingXs,
          ),
          itemBuilder: (context, index) {
            final value = index + 1;
            return _NumberKey(
              value: value,
              onPressed: () => onNumberPressed(value),
            );
          },
        ).animate().fadeIn(duration: 220.ms).slideY(begin: .05, end: 0),
        const SizedBox(height: AppDimensions.spacingMd),
        Row(
          children: [
            Expanded(
              child: _ToolButton(
                label: 'Erase',
                icon: Icons.backspace_outlined,
                onPressed: () => ref
                    .read(gameControllerProvider.notifier)
                    .eraseSelectedCell(),
              ),
            ),
            const SizedBox(width: AppDimensions.spacingXs),
            Expanded(
              child: _ToolButton(
                label: 'Notes',
                icon: notesMode
                    ? Icons.edit_note_rounded
                    : Icons.edit_note_outlined,
                selected: notesMode,
                onPressed: () =>
                    ref.read(gameControllerProvider.notifier).toggleNotesMode(),
              ),
            ),
            const SizedBox(width: AppDimensions.spacingXs),
            Expanded(
              child: _ToolButton(
                label: 'Hint',
                icon: Icons.lightbulb_outline_rounded,
                onPressed: onHintPressed,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppDimensions.spacingXs),
        Row(
          children: [
            Expanded(
              child: _ToolButton(
                label: 'Undo',
                icon: Icons.undo_rounded,
                onPressed: canUndo
                    ? () => ref.read(gameControllerProvider.notifier).undo()
                    : null,
              ),
            ),
            const SizedBox(width: AppDimensions.spacingXs),
            Expanded(
              child: _ToolButton(
                label: 'Redo',
                icon: Icons.redo_rounded,
                onPressed: canRedo
                    ? () => ref.read(gameControllerProvider.notifier).redo()
                    : null,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _NumberKey extends StatelessWidget {
  const _NumberKey({required this.value, required this.onPressed});

  final int value;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return PressableScale(
      child: Material(
        color: colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(AppDimensions.radiusSm),
        child: InkWell(
          borderRadius: BorderRadius.circular(AppDimensions.radiusSm),
          onTap: onPressed,
          child: Center(
            child: Text(
              '$value',
              style: theme.textTheme.titleMedium?.copyWith(
                color: colorScheme.onPrimaryContainer,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ToolButton extends StatelessWidget {
  const _ToolButton({
    required this.label,
    required this.icon,
    required this.onPressed,
    this.selected = false,
  });

  final String label;
  final IconData icon;
  final VoidCallback? onPressed;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return PressableScale(
      enabled: onPressed != null,
      child: OutlinedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon, size: 19),
        label: Text(label, maxLines: 1, overflow: TextOverflow.ellipsis),
        style: OutlinedButton.styleFrom(
          backgroundColor: selected ? colorScheme.secondaryContainer : null,
          foregroundColor: selected ? colorScheme.onSecondaryContainer : null,
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.spacingXs,
          ),
        ),
      ),
    );
  }
}

class _GameError extends StatelessWidget {
  const _GameError({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spacingLg),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Unable to load game',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: AppDimensions.spacingXs),
            Text(message, textAlign: TextAlign.center),
            const SizedBox(height: AppDimensions.spacingMd),
            FilledButton(onPressed: onRetry, child: const Text('Try again')),
          ],
        ),
      ),
    );
  }
}

class _VictoryDialog extends StatelessWidget {
  const _VictoryDialog({
    required this.elapsed,
    required this.mistakes,
    required this.onHome,
    required this.onNewGame,
  });

  final String elapsed;
  final int mistakes;
  final VoidCallback onHome;
  final VoidCallback onNewGame;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Dialog(
      insetPadding: const EdgeInsets.all(AppDimensions.spacingLg),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 420),
        child: Padding(
          padding: const EdgeInsets.all(AppDimensions.spacingLg),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  for (var index = 0; index < 8; index++)
                    Transform.rotate(
                          angle: (math.pi * 2 / 8) * index,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: 8,
                              height: 28,
                              decoration: BoxDecoration(
                                color: colorScheme.primary.withValues(
                                  alpha: .24,
                                ),
                                borderRadius: BorderRadius.circular(99),
                              ),
                            ),
                          ),
                        )
                        .animate(delay: (index * 35).ms)
                        .fadeIn(duration: 240.ms)
                        .scale(
                          begin: const Offset(.4, .4),
                          end: const Offset(1, 1),
                        ),
                  Container(
                        width: 86,
                        height: 86,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: colorScheme.primaryContainer,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.emoji_events_rounded,
                          color: colorScheme.onPrimaryContainer,
                          size: 46,
                        ),
                      )
                      .animate()
                      .scale(
                        duration: 380.ms,
                        curve: Curves.easeOutBack,
                        begin: const Offset(.4, .4),
                      )
                      .fadeIn(duration: 180.ms),
                ],
              ),
              const SizedBox(height: AppDimensions.spacingLg),
              Text(
                'Puzzle Complete',
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w900,
                ),
              ).animate(delay: 90.ms).fadeIn().slideY(begin: .12, end: 0),
              const SizedBox(height: AppDimensions.spacingSm),
              Row(
                children: [
                  Expanded(
                    child: _VictoryMetric(
                      icon: Icons.timer_outlined,
                      label: 'Time',
                      value: elapsed,
                    ),
                  ),
                  const SizedBox(width: AppDimensions.spacingXs),
                  Expanded(
                    child: _VictoryMetric(
                      icon: Icons.close_rounded,
                      label: 'Mistakes',
                      value: '$mistakes',
                    ),
                  ),
                ],
              ).animate(delay: 140.ms).fadeIn().slideY(begin: .08, end: 0),
              const SizedBox(height: AppDimensions.spacingLg),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: onHome,
                      child: const Text('Home'),
                    ),
                  ),
                  const SizedBox(width: AppDimensions.spacingXs),
                  Expanded(
                    child: FilledButton(
                      onPressed: onNewGame,
                      child: const Text('New Game'),
                    ),
                  ),
                ],
              ).animate(delay: 190.ms).fadeIn().slideY(begin: .08, end: 0),
            ],
          ),
        ),
      ),
    );
  }
}

class _VictoryMetric extends StatelessWidget {
  const _VictoryMetric({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(AppDimensions.radiusSm),
        border: Border.all(color: colorScheme.outlineVariant),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spacingSm),
        child: Column(
          children: [
            Icon(icon, color: colorScheme.onSurfaceVariant),
            const SizedBox(height: AppDimensions.spacing2xs),
            Text(
              value,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              label,
              style: theme.textTheme.labelSmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

extension _DifficultyLabel on SudokuDifficulty {
  String get label {
    return switch (this) {
      SudokuDifficulty.easy => 'Easy',
      SudokuDifficulty.medium => 'Medium',
      SudokuDifficulty.hard => 'Hard',
      SudokuDifficulty.expert => 'Expert',
      SudokuDifficulty.master => 'Master',
    };
  }
}
