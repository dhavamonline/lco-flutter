import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var c1 = Colors.black;
  var colorList1=[Colors.blue,Colors.orange,Colors.pink,Colors.purple,Colors.white,Colors.yellow];
  var c2 = Colors.black;
  var colorList2=[Colors.green,Colors.blue,Colors.brown,Colors.indigo,Colors.lightBlue,Colors.lime];
  changeColor(){
    var random1=Random().nextInt(colorList1.length);
    var random2=Random().nextInt(colorList2.length); 
  setState(() {
   c1=colorList1[random1]; 
   c2=colorList2[random2]; 
  });
   }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Random Color"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(20.0),
                    height: 100.0,
                    width: 100.0,
                    color: c1,
                  ),
                  Expanded(
                    child: Container(
                    margin: EdgeInsets.all(20.0),
                    height: 100.0,
                    width: 100.0,
                    color: c2,
                  )
                  ),
                ],
              ),
               Expanded(
                    child: RaisedButton(
                      child: Text("Press"),
                      onPressed: changeColor,
                    ),
                  ),
              Row(
                 children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(20.0),
                    height: 100.0,
                    width: 100.0,
                    color: Colors.deepOrange,
                  ),
                  Expanded(
                    child: Container(
                    margin: EdgeInsets.all(20.0),
                    height: 100.0,
                    width: 100.0,
                    color: Colors.blue,
                  )
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
