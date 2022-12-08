import 'package:flutter/material.dart';
import 'package:luxview/Management/global.dart';
import 'package:luxview/Pages/Login.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});
  @override
  _MessagePageState createState() => _MessagePageState();
}

var d_userservers = {
  'server1': 'server1text',
  'server2': 'server2text',
  'server3': 'server3text'
};

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    if (isLoggedIn) {
      return Scaffold(
        appBar: AppBar(
          elevation: 4,
          centerTitle: true,
          automaticallyImplyLeading: false,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          title: const Text(
            "Messages",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              fontSize: 20,
            ),
          ),
        ),
        body: const Center(
          child: Text(
            "Work in progress",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              fontSize: 35,
            ),
          ),
        ),
      );
    } else {
      return const Scaffold(body: LoginForm());
    }
  }
}
