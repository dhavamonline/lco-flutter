import 'package:flutter/material.dart';
import 'package:navigation_app/HomePage.dart';
import 'Category.dart';
import 'Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: <String, WidgetBuilder>
      {
        "/category": (BuildContext context) => Category(),
        "/login": (BuildContext context) => Login()
      }
    );
  }
}