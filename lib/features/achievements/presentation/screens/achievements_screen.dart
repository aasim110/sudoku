import 'package:flutter/material.dart';
import 'package:offline_sudoku/shared/widgets/app_scaffold.dart';
import 'package:offline_sudoku/shared/widgets/placeholder_panel.dart';

class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: 'Achievements',
      child: PlaceholderPanel(
        title: 'Achievements',
        message: 'Offline unlocks and milestone rewards will live here.',
      ),
    );
  }
}
