import 'package:fluter_example2/login/view/login_view.dart';
import 'package:fluter_example2/navigation/app_router.dart';
import 'package:fluter_example2/themes/theme_notifer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'translator/language_notifier.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => LanguageNotifier(),
        lazy: true,
      ),
      ChangeNotifierProvider(
        create: (context) => ThemeNotifer(),
        lazy: true,
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
  static final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    var myNotifier = Provider.of<LanguageNotifier>(context, listen: false);
    var themeNotifier = Provider.of<ThemeNotifer>(context);
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      title: "${myNotifier.lang}",
      theme: themeNotifier.currentTheme,
    );
  }
}
