import 'package:fluter_example2/login/view/login_view.dart';
import 'package:fluter_example2/themes/theme_notifer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'translator/language_notifier.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => LanguageNotifier(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // late LanguageNotifier langNotifier;
  //
  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   // Access context and initialize langNotifier here
  //   langNotifier = context.watch<LanguageNotifier>();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "", theme: ThemeNotifer().currentTheme, home: LoginView());
  }
}
