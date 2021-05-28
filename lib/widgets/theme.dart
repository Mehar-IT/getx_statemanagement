import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme() {
    return ThemeData(brightness: Brightness.light);
  }

  static ThemeData darkTheme() {
    return ThemeData(brightness: Brightness.dark);
  }
}
