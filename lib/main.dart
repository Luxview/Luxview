import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:luxview/Pages/Home.dart';

void main() {
  runApp(Luxview());
}

class Luxview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: ThemeData(
            brightness: Brightness.light,
            backgroundColor: Color(0xFFFFFFFF),
            scaffoldBackgroundColor: const Color(0xFFFFFFFF)),
        dark: ThemeData(
            brightness: Brightness.dark,
            backgroundColor: const Color(0xFF000000),
            scaffoldBackgroundColor: const Color(0xFF000000)),
        initial: AdaptiveThemeMode.light,
        builder: (theme, darkTheme) => MaterialApp(
              title: 'Luxview',
              theme: ThemeData(),
              debugShowCheckedModeBanner: false,
              home: HomePage(),
            ));
  }
}
