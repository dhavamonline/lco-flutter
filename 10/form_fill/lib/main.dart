import 'package:flutter/material.dart';
import 'package:form_fill/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Details',
      home: SignUpPage(),
    );
  }
}