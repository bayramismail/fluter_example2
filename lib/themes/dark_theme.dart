
import 'package:flutter/material.dart';

class DarkTheme {
  late ThemeData theme;

  DarkTheme() {
    theme = ThemeData.dark().copyWith(

      scaffoldBackgroundColor: Colors.white10,
      colorScheme: ColorScheme.dark().copyWith(
      )
    );
  }
}
