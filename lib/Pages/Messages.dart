import 'package:flutter/material.dart';
import 'package:luxview/Management/global.dart' as global;
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
    if (global.isLoggedIn) {
      return Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: <Widget>[
                    for (var i = 0; i < d_userservers.length; i++)
                      ListTile(
                        title: Text(d_userservers.keys.elementAt(i)),
                        subtitle: Text(d_userservers.values.elementAt(i)),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return const Scaffold(body: LoginForm());
    }
  }
}
