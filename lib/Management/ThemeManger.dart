import "package:flutter/material.dart";
import "package:luxview/Management/DataManager.dart";
import 'package:luxview/Management/Global.dart';

class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData = ThemeData();
  ThemeData getTheme() => _themeData;

  final darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    backgroundColor: const Color(0x00000000),
    dividerColor: Colors.black,
    scaffoldBackgroundColor: Colors.black,
    iconTheme: const IconThemeData(color: Color(0xff3a57e8)),
    appBarTheme: const AppBarTheme(color: Color(0xFF212121)),
  );

  final lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.white,
    brightness: Brightness.light,
    backgroundColor: const Color(0xFFFFFFFF),
    dividerColor: Colors.grey,
    scaffoldBackgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: Color(0xff3a57e8)),
    appBarTheme: const AppBarTheme(color: Color(0xFFE5E5E5)),
  );

  var customTheme = ThemeData(
    primarySwatch: primarySwatchCustom,
    primaryColor: primaryColorCustom,
    backgroundColor: backgroundColorCustom,
    dividerColor: dividerColorCustom,
    scaffoldBackgroundColor: caffoldBackgroundColorcustom,
    iconTheme: iconThemeCustom,
    appBarTheme: appBarThemeCustom,
  );

  ThemeNotifier() {
    DataManager.readData("themeMode").then((value) {
      var themeMode = value ?? "light";
      if (themeMode == "light") {
        _themeData = lightTheme;
      }
      if (themeMode == "dark") {
        _themeData = darkTheme;
      }
      if (themeMode == "custom") {
        _themeData = customTheme;
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

  void setCustomMode() async {
    _themeData = customTheme;
    DataManager.saveData("themeMode", "custom");
    notifyListeners();
  }
}
