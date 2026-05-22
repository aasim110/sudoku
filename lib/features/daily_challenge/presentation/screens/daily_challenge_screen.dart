import 'package:flutter/material.dart';
import 'package:offline_sudoku/shared/widgets/app_scaffold.dart';
import 'package:offline_sudoku/shared/widgets/placeholder_panel.dart';

class DailyChallengeScreen extends StatelessWidget {
  const DailyChallengeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: 'Daily Challenge',
      child: PlaceholderPanel(
        title: 'Daily Challenge',
        message: 'Deterministic offline daily puzzles will live here.',
      ),
    );
  }
}
