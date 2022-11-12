import "package:flutter/material.dart";
import 'package:luxview/Management/ApiManager.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TextButton(
            onPressed: () => {discordapi()}, child: const Text("Test api")));
  }
}
