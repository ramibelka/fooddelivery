
import 'package:flutter/material.dart';
import 'package:fooddelivery/screen/mainscreen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: "Gilroy"),
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MainScreen();
  }
}