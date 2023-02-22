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
    // FloatingActionButtons Theme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),
    // ElevatedButtons Theme
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(primary),
          elevation: MaterialStatePropertyAll(0),
          shape: MaterialStatePropertyAll(StadiumBorder())),
    ),
    // AlertDialog Theme
    dialogTheme: DialogTheme(
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    // InputDecoration Theme
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
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
