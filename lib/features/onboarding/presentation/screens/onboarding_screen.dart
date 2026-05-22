import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:offline_sudoku/app/router/app_routes.dart';
import 'package:offline_sudoku/shared/widgets/app_scaffold.dart';
import 'package:offline_sudoku/shared/widgets/placeholder_panel.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Welcome',
      child: PlaceholderPanel(
        title: 'Offline Sudoku',
        message: 'Your game shell is ready for the onboarding flow.',
        action: FilledButton(
          onPressed: () => context.go(AppRoutes.home),
          child: const Text('Start'),
        ),
      ),
    );
  }
}
