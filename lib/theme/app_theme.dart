import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.indigo,
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFF7F9FC),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.indigo,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
        color: Colors.black87,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
        color: Colors.black87,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.0,
        color: Colors.black54,
      ),
      labelLarge: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.indigo,
    ).copyWith(
      secondary: Colors.amber,
    ),
  );
}

