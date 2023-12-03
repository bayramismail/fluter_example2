import 'package:fluter_example2/login/view/login_view.dart';
import 'package:fluter_example2/themes/theme_notifer.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        theme: ThemeNotifer().currentTheme,
        home: LoginView());
  }
}
