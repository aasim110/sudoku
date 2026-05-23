import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:offline_sudoku/features/gameplay/application/providers/game_controller.dart';
import 'package:offline_sudoku/features/gameplay/domain/entities/game_session.dart';
import 'package:offline_sudoku/features/gameplay/presentation/screens/home_screen.dart';

import '../../../../helpers/fakes.dart';

void main() {
  testWidgets('renders home actions', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [gameSessionProvider.overrideWithValue(null)],
        child: const MaterialApp(home: HomeScreen()),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Offline Sudoku'), findsOneWidget);
    expect(find.text('New Game'), findsOneWidget);
    expect(find.text('Daily Challenge'), findsOneWidget);
    expect(find.text('Statistics'), findsOneWidget);
    expect(find.text('Achievements'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);
  });

  testWidgets('asks whether to resume before starting a new game', (
    tester,
  ) async {
    final session = GameSession(
      id: 'active-session',
      puzzle: fakePuzzle(),
      cells: const [],
      status: GameSessionStatus.playing,
      createdAt: DateTime.utc(2026, 5, 23),
      updatedAt: DateTime.utc(2026, 5, 23),
    );

    await tester.pumpWidget(
      ProviderScope(
        overrides: [gameSessionProvider.overrideWithValue(session)],
        child: const MaterialApp(home: HomeScreen()),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Resume Game'), findsOneWidget);

    await tester.tap(find.text('New Game'));
    await tester.pumpAndSettle();

    expect(find.text('Resume previous game?'), findsOneWidget);
    expect(find.text('Resume'), findsOneWidget);
    expect(find.text('New Game'), findsWidgets);
  });
}
