import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:offline_sudoku/features/gameplay/presentation/screens/difficulty_selection_screen.dart';

void main() {
  testWidgets('renders difficulty cards and updates selected action', (
    tester,
  ) async {
    await tester.binding.setSurfaceSize(const Size(900, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    await tester.pumpWidget(
      const MaterialApp(home: DifficultySelectionScreen()),
    );
    await tester.pumpAndSettle();

    expect(find.text('Choose your challenge'), findsOneWidget);
    expect(find.text('Easy'), findsOneWidget);
    expect(find.text('Medium'), findsOneWidget);
    expect(find.text('Hard'), findsOneWidget);
    expect(find.text('Expert'), findsOneWidget);
    expect(find.text('Master'), findsOneWidget);
    expect(find.text('Start Easy'), findsOneWidget);

    await tester.tap(find.text('Hard'));
    await tester.pumpAndSettle();

    expect(find.text('Start Hard'), findsOneWidget);
  });
}
