import 'package:flutter/material.dart';

class LighTheme {
  late ThemeData theme;
  LighTheme() {
    theme = ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              foregroundColor:
                  MaterialStateProperty.resolveWith((states) => Colors.white),
              textStyle:
                  MaterialStateProperty.resolveWith((states) => TextStyle()),
              backgroundColor: MaterialStateColor.resolveWith(
                  (states) => Color.fromRGBO(92, 107, 188, 1)))),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          shadowColor: Colors.black,
          elevation: 1),
      scaffoldBackgroundColor: Colors.white,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
