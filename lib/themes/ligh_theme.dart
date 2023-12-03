import 'package:flutter/material.dart';

class LighTheme {
  final _lightColor = _LightColor();

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
                    (states) => Color.fromRGBO(92, 107, 188, 1)))));
  }
}

class _LightColor {
  final Color _textColor = const Color.fromARGB(255, 37, 5, 5);
  final Color blueMenia = const Color.fromARGB(95, 188, 248, 1);
}
