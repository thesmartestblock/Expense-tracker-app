import 'package:expense_tracker_app/widgets/expenses.dart';
import 'package:flutter/material.dart';

ColorScheme kGlobalColor = ColorScheme.fromSeed(
  seedColor: //Color.fromARGB(255, 222, 241, 9),
      const Color.fromARGB(255, 7, 30, 92),
);

ColorScheme kDarkModeColor = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 6, 54, 187),
  brightness: Brightness.dark,
);
void main() {
  runApp(MaterialApp(
    darkTheme: ThemeData.dark().copyWith(
      useMaterial3: true,
      colorScheme: kDarkModeColor,
      cardTheme: const CardTheme().copyWith(
        color: kDarkModeColor.secondaryContainer,
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 5,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 2,
          backgroundColor: kDarkModeColor.primaryContainer,
          foregroundColor: kDarkModeColor.onPrimaryContainer,
        ),
      ),
      textTheme: const TextTheme().copyWith(
        titleLarge: const TextStyle().copyWith(
          fontSize: 26,
          fontWeight: FontWeight.normal,
          color: kDarkModeColor.onSecondaryContainer,
        ),
      ),
    ),
    theme: ThemeData().copyWith(
      useMaterial3: true,
      // scaffoldBackgroundColor: Color.fromARGB(143, 230, 232, 104),
      colorScheme: kGlobalColor,
      appBarTheme: AppBarTheme(
        foregroundColor: kGlobalColor.primaryContainer,
        backgroundColor: kGlobalColor.onPrimaryContainer,
      ),
      cardTheme: const CardTheme().copyWith(
        color: kGlobalColor.secondaryContainer,
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 5,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 2,
          backgroundColor: kGlobalColor.primaryContainer,
        ),
      ),
      textTheme: const TextTheme().copyWith(
        titleLarge: const TextStyle().copyWith(
          fontSize: 26,
          fontWeight: FontWeight.normal,
          color: kGlobalColor.onSecondaryContainer,
        ),
      ),
    ),
    themeMode: ThemeMode.system,
    home: const Expenses(),
  ));
}
