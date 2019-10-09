import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
 final String name, mobile,email,collegename;
  HomePage({Key key, @required this.name, this.mobile, this.email, this.collegename}) : super (key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: new AppBar(title: new Text("Student Information")),
      body: Form(
        child:Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          children: <Widget>[
            ListTile(
               leading: const Icon(Icons.person),
               title: Text(name),
            ),
            ListTile(
               leading: const Icon(Icons.email),
               title: Text(email),
            ),
            ListTile(
               leading: const Icon(Icons.phone_android),
               title: Text(mobile),
            ),
            ListTile(
               leading: const Icon(Icons.school),
               title: Text(collegename),
            ),
          ],
        ),
      ),
      ),
    );
  }
}