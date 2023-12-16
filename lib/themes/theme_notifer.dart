import 'package:fluter_example2/themes/dark_theme.dart';
import 'package:flutter/material.dart';

import 'ligh_theme.dart';

class ThemeNotifer extends ChangeNotifier {
  bool isLighTheme = true;

  void changeTheme() {
    isLighTheme = !isLighTheme;
    notifyListeners();
  }

  ThemeData get currentTheme {
    print(isLighTheme.toString());
    if(isLighTheme){
      return ThemeData.dark();
    }
    return ThemeData.light();
  }

}
