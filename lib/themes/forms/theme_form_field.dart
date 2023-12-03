import 'package:flutter/material.dart';

class ThemeTextFormField extends StatelessWidget {
  String text;
  TextEditingController? textEditingController;
  TextStyle? textStyle;
  ThemeTextFormField(
      {super.key,
      required this.text,
      this.textEditingController,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        controller: textEditingController,
        style: textStyle,
        decoration:
            InputDecoration(label: Text(text), border: OutlineInputBorder()),
      ),
    );
  }
}
