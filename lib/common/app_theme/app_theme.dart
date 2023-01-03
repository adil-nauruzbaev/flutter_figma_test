import 'package:flutter/material.dart';

abstract class AppTheme {
  static final light = ThemeData(
    fontFamily: 'MarkProbold',
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.green,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.white,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
    ),
  );
}
