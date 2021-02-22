import 'package:flutter/material.dart';

class MyTheme with ChangeNotifier {
  ThemeData _theme;

  MyTheme(this._theme);

  ThemeData getTheme() => this._theme;

  void setTheme(ThemeData theme) {
    this._theme = theme;
    notifyListeners();
  }
}
