import "package:flutter/material.dart";
import "package:luxview/Management/ThemeManger.dart";
import "package:luxview/Pages/Home.dart";
import "package:provider/provider.dart";

void main() {
  return runApp(ChangeNotifierProvider<ThemeNotifier>(
    create: (_) => ThemeNotifier(),
    child: const Luxview(),
  ));
}

class Luxview extends StatelessWidget {
  const Luxview({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
        builder: (context, theme, child) => MaterialApp(
              title: "Luxview",
              theme: theme.getTheme(),
              home: const HomePage(),
              debugShowCheckedModeBanner: false,
            ));
  }
}
