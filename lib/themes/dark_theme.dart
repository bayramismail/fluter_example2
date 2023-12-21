import 'package:flutter/material.dart';

class DarkTheme {
  late ThemeData theme;

  DarkTheme() {
    theme = ThemeData.dark().copyWith(
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              foregroundColor:
              MaterialStateProperty.resolveWith((states) => Colors.white),
              textStyle:
              MaterialStateProperty.resolveWith((states) => TextStyle()),
              backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Color.fromRGBO(92, 107, 188, 1)))),
      appBarTheme: AppBarTheme(shadowColor: Colors.white, elevation: 1),
      scaffoldBackgroundColor: Colors.white12,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color.fromARGB(36, 35, 41, 100),
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
