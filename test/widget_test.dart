import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:offline_sudoku/app/app.dart';

void main() {
  testWidgets('renders the app shell', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: SudokuApp()));

    expect(find.text('Offline Sudoku'), findsOneWidget);
  });
}
