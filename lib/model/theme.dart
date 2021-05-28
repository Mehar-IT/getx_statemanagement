import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lighttheme() => ThemeData(brightness: Brightness.light);
  static ThemeData darktheme() => ThemeData(brightness: Brightness.dark);
}

class ThemeProvider extends ChangeNotifier {
  bool _theme = true;
  bool get mytheme => _theme;

  void setter() {
    _theme = !_theme;
    notifyListeners();
  }
}
