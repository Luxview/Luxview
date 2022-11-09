import "package:flutter/material.dart";
import "package:luxview/Management/ThemeManger.dart";
import 'package:provider/provider.dart';

class ThemesPage extends StatefulWidget {
  const ThemesPage({super.key});
  @override
  _ThemesPageState createState() => _ThemesPageState();
}

class _ThemesPageState extends State<ThemesPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, theme, _) => MaterialApp(
        theme: theme.getTheme(),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Themes"),
          ),
          body: Row(
            children: [
              TextButton(
                onPressed: () => {
                  theme.setLightMode(),
                },
                child: const Text("Light Theme"),
              ),
              TextButton(
                onPressed: () => {
                  theme.setDarkMode(),
                },
                child: const Text("Dark theme"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
