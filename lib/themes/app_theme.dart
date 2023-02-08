import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.brown;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color primario
    primaryColor: primary,
    // AppBar Theme
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: primary,
    ),
    // TextButton Theme
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStatePropertyAll(primary),
        // style: TextButton.styleFrom(foregroundColor: primary),
        // Also works, but not const
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // Color primario
    primaryColor: primary,
    // AppBar Theme
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: primary,
    ),
    scaffoldBackgroundColor: Colors.black,
  );
}
