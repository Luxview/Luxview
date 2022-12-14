import "package:flutter/material.dart";
import 'package:luxview/Management/pluginManager.dart';

class PluginsPage extends StatefulWidget {
  const PluginsPage({super.key});
  @override
  _PluginsPageState createState() => _PluginsPageState();
}

class _PluginsPageState extends State<PluginsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        centerTitle: true,
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: const Text(
          "Plugins",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            //loader();
          },
          child: const Text("Load Plugins"),
        ),
      ),
    );
  }
}
