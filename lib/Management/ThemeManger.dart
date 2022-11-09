import "package:flutter/material.dart";
import "package:luxview/Management/DataManager.dart";

class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData = ThemeData();
  ThemeData getTheme() => _themeData;

  final darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF212121),
    dividerColor: Colors.black12,
    scaffoldBackgroundColor: Colors.black,
  );

  final lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.white,
    brightness: Brightness.light,
    backgroundColor: const Color(0xFFE5E5E5),
    dividerColor: Colors.white54,
    scaffoldBackgroundColor: Colors.white,
  );

  ThemeNotifier() {
    DataManager.readData("themeMode").then((value) {
      var themeMode = value ?? "light";
      if (themeMode == "light") {
        _themeData = lightTheme;
      } else {
        _themeData = darkTheme;
      }
      notifyListeners();
    });
  }

  void setDarkMode() async {
    _themeData = darkTheme;
    DataManager.saveData("themeMode", "dark");
    notifyListeners();
  }

  void setLightMode() async {
    _themeData = lightTheme;
    DataManager.saveData("themeMode", "light");
    notifyListeners();
  }
}
