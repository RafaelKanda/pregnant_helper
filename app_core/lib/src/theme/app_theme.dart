import 'package:flutter/material.dart';

final class AppTheme {
  static const primaryColor = Color(0xFFF2E3FA);
  static const secondaryColor = Color(0xFFF3EDF7);
  static const darkTextColor = Color(0xFF5A3784);
  static const textColor = Color(0xFF9360D1);

  static final _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: primaryColor),
  );

  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
    useMaterial3: true,
    fontFamily: 'Roboto',
    scaffoldBackgroundColor: primaryColor,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: secondaryColor,
      labelStyle: const TextStyle(
        fontSize: 14,
        color: textColor,
        fontWeight: FontWeight.w700,
      ),
      floatingLabelStyle: const TextStyle(
        color: darkTextColor,
        fontWeight: FontWeight.w600,
      ),
      disabledBorder: _defaultInputBorder.copyWith(
        borderSide: const BorderSide(color: darkTextColor),
      ),
      border: _defaultInputBorder,
      enabledBorder: _defaultInputBorder,
      focusedBorder: _defaultInputBorder,
      errorBorder: _defaultInputBorder.copyWith(
        borderSide: const BorderSide(color: Colors.red),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          side: const BorderSide(color: darkTextColor),
          foregroundColor: darkTextColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          textStyle: const TextStyle(
            fontSize: 14,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w700,
          )),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: darkTextColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        textStyle: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );
  static final darkTheme = lightTheme;

  static const titleStyle = TextStyle(
    color: darkTextColor,
    fontSize: 32,
    fontWeight: FontWeight.w900,
  );
  static const titleSmallStyle = TextStyle(
    color: darkTextColor,
    fontSize: 24,
    fontWeight: FontWeight.w900,
  );
  static const subTitleStyle = TextStyle(
    color: darkTextColor,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static const textStyle = TextStyle(
    color: textColor,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );
}
