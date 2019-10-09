import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  var intialcolor = Colors.black;

  var colorList = [
    Colors.amber,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
  ];

  changeColor() {
    var random = Random().nextInt(colorList.length);
    print(random);
    setState(() {
      intialcolor = colorList[random];
    });
  }
  changeColor1() {
  var random1 = Random().nextInt(colorList.length);
    print(random1);
    setState(() {
      intialcolor = colorList[random1];
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Random Color"),
      ),
      body: Column(
        children: <Widget>[
          Container(          
          height: 200.0,
          width: double.infinity,
          color: intialcolor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("Color Change"),
                onPressed: changeColor,
              ),
            ],
          ),
          ),
          Container(
          height: 200.0,
          width: double.infinity,
          color: intialcolor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("Color Change"),
                onPressed: changeColor1,
              )
            ],
          ),
          ),
        ],
          
          ),
    )
    );
  }
}