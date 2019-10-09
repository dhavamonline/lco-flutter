import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news/HomePage.dart';
// import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark),
    );
    // FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        // top: false,
        child: HomePage()),
    );
  }
}