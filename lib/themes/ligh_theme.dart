import 'package:fluter_example2/themes/color_scheme.dart';
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
      textTheme: TextTheme().copyWith(
          headlineSmall: TextStyle(color: LightColorScheme.textPrimary)),
      colorScheme: ColorScheme.light().copyWith(
          primary: LightColorScheme.primary,
          onPrimary: LightColorScheme.primary),
      iconTheme: IconThemeData().copyWith(
        color: LightColorScheme.primary
      )
    );
  }
}
