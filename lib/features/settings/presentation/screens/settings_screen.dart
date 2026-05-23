import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:offline_sudoku/app/router/app_routes.dart';
import 'package:offline_sudoku/shared/widgets/app_scaffold.dart';
import 'package:offline_sudoku/shared/widgets/placeholder_panel.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Settings',
      child: PlaceholderPanel(
        title: 'Settings',
        message:
            'Sound, haptics, mistake behavior, and accessibility live here.',
        action: OutlinedButton(
          onPressed: () => context.push(AppRoutes.themes),
          child: const Text('Themes'),
        ),
      ),
    );
  }
}
