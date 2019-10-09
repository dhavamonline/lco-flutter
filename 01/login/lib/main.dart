import 'package:flutter/material.dart';

void main() {
  runApp(MyApp3());
}

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Welcome To The Fight Location",
          textAlign: TextAlign.center,
          ), 
          backgroundColor: Colors.lightGreen
          ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            Text("Enter for Fight",
            style: TextStyle
            (color: Colors.white, 
            fontSize: 25, 
            fontStyle: FontStyle.italic 
            ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "email"
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "password"
              ),
            ),
            RaisedButton(
              child: Text("Login"),
              color: Colors.green,
              textColor: Colors.white,
              onPressed: (){},
            ),
            RaisedButton(
              child: Text("Sign Up (New User)"),
              textColor: Colors.white,
              color: Colors.deepOrange,
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}