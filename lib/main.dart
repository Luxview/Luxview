import 'package:flutter/material.dart';
import 'package:luxview/Pages/Home.dart';

void main() {
  runApp(Luxview());
}

class Luxview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Luxview',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
