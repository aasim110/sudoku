import 'package:flutter/material.dart';
import 'package:offline_sudoku/core/constants/app_dimensions.dart';

class PlaceholderPanel extends StatelessWidget {
  const PlaceholderPanel({
    required this.title,
    required this.message,
    super.key,
    this.action,
  });

  final String title;
  final String message;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppDimensions.spacingSm),
        Text(message, style: textTheme.bodyLarge, textAlign: TextAlign.center),
        if (action != null) ...[
          const SizedBox(height: AppDimensions.spacingLg),
          Align(child: action),
        ],
      ],
    );
  }
}
