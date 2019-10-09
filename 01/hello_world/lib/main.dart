import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      home: Scaffold(
        appBar: AppBar(
          title: Text("New Title"), 
          backgroundColor: Colors.lightGreen
          ),
        body: Center(
          child: Text("Hellow New"),
        ),
      ),
    );
  }
}
