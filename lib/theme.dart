import 'package:flutter/material.dart';

const MaterialColor black = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    900: Color(0xFF0C0C0C),
  },
);
const int _blackPrimaryValue = 0xFF0C0C0C;

ThemeData light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    accentColor: Colors.pink,
    scaffoldBackgroundColor: Color(0xfff1f1f1)
);

ThemeData dark = ThemeData(
  brightness: Brightness.dark,
    scaffoldBackgroundColor: Color(0xff403e3e),
    primarySwatch: Colors.indigo,
    accentColor: Colors.pink
);

class ThemeNotifier extends ChangeNotifier {
  bool _darkTheme = true;

  bool get darkTheme => _darkTheme;

  ThemeNotifier() {
    _darkTheme = true;
  }

  toggleTheme() {
    _darkTheme = !_darkTheme;
    notifyListeners();
  }
}