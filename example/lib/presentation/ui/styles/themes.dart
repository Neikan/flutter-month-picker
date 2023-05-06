// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final defaultTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.green,
  ).copyWith(
    secondary: Colors.green,
  ),
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ),
  ),
  primaryTextTheme: const TextTheme(
    titleSmall: TextStyle(
      fontSize: 10.0,
    ),
    titleMedium: TextStyle(
      fontSize: 12.0,
    ),
    headlineSmall: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
    ),
  ),
);
