import 'package:fluter_example2/themes/dark_theme.dart';
import 'package:fluter_example2/themes/ligh_theme.dart';
import 'package:flutter/material.dart';

class ThemeNotifer extends ChangeNotifier {
  bool isLighTheme = true;

  void changeTheme() {
    isLighTheme = !isLighTheme;
    notifyListeners();
  }

  ThemeData get currentTheme {
    if (isLighTheme) {
      return DarkTheme().theme;
    }
    return LighTheme().theme;
  }
}
