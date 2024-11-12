import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    fontFamily: "ClashDisplay",

    primaryColor: const Color(0xFF1E1E1E), // Dark background color

    scaffoldBackgroundColor: const Color(0xFF121212),
  );

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
  );
}
