import 'package:flutter/material.dart';
import 'package:offline_sudoku/shared/widgets/app_scaffold.dart';
import 'package:offline_sudoku/shared/widgets/placeholder_panel.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: 'Stats',
      child: PlaceholderPanel(
        title: 'Stats',
        message: 'Local performance and streak tracking will live here.',
      ),
    );
  }
}
