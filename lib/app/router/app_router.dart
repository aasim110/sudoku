import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:offline_sudoku/app/router/app_routes.dart';
import 'package:offline_sudoku/app/router/route_names.dart';
import 'package:offline_sudoku/features/achievements/presentation/screens/achievements_screen.dart';
import 'package:offline_sudoku/features/daily_challenge/presentation/screens/daily_challenge_screen.dart';
import 'package:offline_sudoku/features/gameplay/presentation/screens/difficulty_selection_screen.dart';
import 'package:offline_sudoku/features/gameplay/presentation/screens/game_screen.dart';
import 'package:offline_sudoku/features/gameplay/presentation/screens/home_screen.dart';
import 'package:offline_sudoku/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:offline_sudoku/features/settings/presentation/screens/settings_screen.dart';
import 'package:offline_sudoku/features/stats/presentation/screens/stats_screen.dart';
import 'package:offline_sudoku/features/themes/presentation/screens/themes_screen.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: AppRoutes.onboarding,
    debugLogDiagnostics: false,
    routes: [
      GoRoute(
        path: AppRoutes.onboarding,
        name: RouteNames.onboarding,
        pageBuilder: (context, state) =>
            _buildPage(state: state, child: const OnboardingScreen()),
      ),
      GoRoute(
        path: AppRoutes.home,
        name: RouteNames.home,
        pageBuilder: (context, state) =>
            _buildPage(state: state, child: const HomeScreen()),
      ),
      GoRoute(
        path: AppRoutes.difficultySelection,
        name: RouteNames.difficultySelection,
        pageBuilder: (context, state) =>
            _buildPage(state: state, child: const DifficultySelectionScreen()),
      ),
      GoRoute(
        path: AppRoutes.game,
        name: RouteNames.game,
        pageBuilder: (context, state) => _buildPage(
          state: state,
          child: GameScreen(
            difficultyName: state.uri.queryParameters['difficulty'],
          ),
        ),
      ),
      GoRoute(
        path: AppRoutes.dailyChallenge,
        name: RouteNames.dailyChallenge,
        pageBuilder: (context, state) =>
            _buildPage(state: state, child: const DailyChallengeScreen()),
      ),
      GoRoute(
        path: AppRoutes.stats,
        name: RouteNames.stats,
        pageBuilder: (context, state) =>
            _buildPage(state: state, child: const StatsScreen()),
      ),
      GoRoute(
        path: AppRoutes.achievements,
        name: RouteNames.achievements,
        pageBuilder: (context, state) =>
            _buildPage(state: state, child: const AchievementsScreen()),
      ),
      GoRoute(
        path: AppRoutes.settings,
        name: RouteNames.settings,
        pageBuilder: (context, state) =>
            _buildPage(state: state, child: const SettingsScreen()),
      ),
      GoRoute(
        path: AppRoutes.themes,
        name: RouteNames.themes,
        pageBuilder: (context, state) =>
            _buildPage(state: state, child: const ThemesScreen()),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(title: const Text('Page not found')),
      body: Center(child: Text(state.error?.message ?? 'Unknown route')),
    ),
  );
});

CustomTransitionPage<void> _buildPage({
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 260),
    reverseTransitionDuration: const Duration(milliseconds: 180),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final curved = CurvedAnimation(
        parent: animation,
        curve: Curves.easeOutCubic,
        reverseCurve: Curves.easeInCubic,
      );

      return FadeTransition(
        opacity: curved,
        child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(.025, .02),
            end: Offset.zero,
          ).animate(curved),
          child: child,
        ),
      );
    },
  );
}
