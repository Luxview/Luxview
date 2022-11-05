import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:luxview/Custom/Themes.dart';
import 'package:luxview/Pages/Messages.dart';
import 'package:luxview/Pages/Plugins.dart';
import 'package:luxview/Pages/Profile.dart';
import 'package:luxview/Pages/Settings.dart';
import 'package:luxview/Pages/Themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  Widget _currentWidget = Container();

  @override
  Widget build(BuildContext context) {
    Widget _currentWidget = HomePage();
    switch (_currentIndex) {
      case 0:
        _currentWidget = MessagePage(); //Messages
        break;
      case 1:
        _currentWidget = ThemesPage(); //Themes
        break;
      case 2:
        _currentWidget = PluginsPage(); //Plugins
        break;
      case 3:
        _currentWidget = ProfilePage(); //Profile
        break;
      case 4:
        _currentWidget = SettingsPage(); //Settings
        break;
    }
    return Scaffold(
      body: _currentWidget,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              setState(() => _currentIndex = index);
            });
          },
          backgroundColor: bottomnavbar_bgc,
          selectedItemColor: bottomnavbar_selcol,
          unselectedItemColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Messages",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.brush), label: "Themes"),
            BottomNavigationBarItem(
                icon: Icon(Typicons.puzzle), label: "Plugins"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ]),
    );
  }
}
