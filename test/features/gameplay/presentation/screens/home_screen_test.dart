import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:offline_sudoku/features/gameplay/presentation/screens/home_screen.dart';

void main() {
  testWidgets('renders home actions', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomeScreen()));
    await tester.pumpAndSettle();

    expect(find.text('Offline Sudoku'), findsOneWidget);
    expect(find.text('New Game'), findsOneWidget);
    expect(find.text('Daily Challenge'), findsOneWidget);
    expect(find.text('Statistics'), findsOneWidget);
    expect(find.text('Achievements'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);
  });
}
