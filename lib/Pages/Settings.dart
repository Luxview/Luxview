import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

//Currently Nonfunctional

class _SettingsPageState extends State<SettingsPage> {
  var darkMode = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SettingsList(
        sections: [
          SettingsSection(title: const Text("Luxview"), tiles: <SettingsTile>[
            SettingsTile.switchTile(
              title: const Text("Dark Mode"),
              initialValue: darkMode,
              onToggle: (value) {
                setState(() {
                  darkMode = value;
                  ;
                  if (darkMode)
                    AdaptiveTheme.of(context).setDark();
                  else {
                    AdaptiveTheme.of(context).setLight();
                  }
                });
              },
            )
          ]),
        ],
      ),
    );
  }
}
