import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => theme.colorScheme;
  TextTheme get textTheme => theme.textTheme;
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  bool get isDarkMode => theme.brightness == Brightness.dark;
  bool get reduceMotion => mediaQuery.disableAnimations;

  double get shortestSide => mediaQuery.size.shortestSide;
  bool get isCompact => shortestSide < 600;
}
