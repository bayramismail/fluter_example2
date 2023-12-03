import 'package:flutter/material.dart';

class ThemeTitleText extends StatelessWidget {
  String text;
  TextStyle? textStyle;
  ThemeTitleText({super.key, required this.text, this.textStyle= const TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 40,
  )});

  @override
  Widget build(BuildContext context) {

    return Text(
      text,
      style: textStyle,
    );
  }
}
