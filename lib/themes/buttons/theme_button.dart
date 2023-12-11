import 'package:fluter_example2/themes/buttons/button_enum.dart';
import 'package:flutter/material.dart';

class ThemeElevatedButton extends StatelessWidget {
  void Function()? onPressed;
  Icon? icon;
  String text;
  double? width;
  double? height;
  ButtoNIconPosition? iconPositon;
  ThemeElevatedButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.width ,
      this.height = 40,
      this.icon,
      this.iconPositon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: iconPositon == ButtoNIconPosition.Left
                ? [
                    icon ?? Text(""),
                    SizedBox(
                      width: 10,
                    ),
                    Text(text)
                  ]
                : [
                    Text(text),
                    SizedBox(
                      width: 10,
                    ),
                    icon ?? Text(""),
                  ],
          )),
    );
  }
}
