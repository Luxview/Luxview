import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:luxview/Custom/Themes.dart';
import 'package:luxview/Pages/Messages.dart';
import 'package:flutter/scheduler.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  Widget _currentWidget = Container();

  @override
  void initState() {
    super.initState();
    _Screen();
  }

  void _Screen() {
    switch (_currentIndex) {
      case 0:
        break;
      // Messages
      case 1:
        break;
      //  Themes
      case 2:
        break;
      //  Plugins
      case 3:
        break;
      //  Profile
      case 4:
        break;
      //  Settings
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentWidget,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            SchedulerBinding.instance.addPostFrameCallback((_) {
              setState(() => _currentIndex = index);
            });
            _Screen();
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
