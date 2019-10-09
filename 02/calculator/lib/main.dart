import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget calButton (String input){
      return new Expanded(
        child:new OutlineButton(
          
          padding: EdgeInsets.all(20.0),
          child: Text(
            input,
            
            style: TextStyle(fontSize: 14, 
            color: Colors.blue, 
            fontWeight:FontWeight.bold,
            ),
          ),
          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
          onPressed: (){},
          
        ),
      );

  }





  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
        appBar: AppBar(
          title: Text("Awesome Calculator"),
        ),
        body: Column(
          children:<Widget> [
          new Expanded(
            child: new Divider(
              color: Colors.tealAccent,
              height: 20.0,
            ),
          ),
          new Container(
            margin: EdgeInsets.only(bottom: 5.0),
            child: Column(
              children: <Widget>[
                Row(children: <Widget>[
                    calButton("Clear"),
                    calButton("⌫"),
                ],),
                Row(
                  children: <Widget>[
                    calButton("7"),
                    calButton("8"),
                    calButton("9"),
                    calButton("÷"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    calButton("4"),
                    calButton("5"),
                    calButton("6"),
                    calButton("X"),
                  ],
                ),
                Row(children: <Widget>[
                    calButton("1"),
                    calButton("2"),
                    calButton("3"),
                    calButton("-"),
                    ],
                ),
                Row(children: <Widget>[
                  calButton("0"),
                  calButton("00"),
                  calButton("."),
                  calButton("+"),
                ],),
                Row(children: <Widget>[
                  calButton("="),
                ],),
              ],
            ),
          )
          ]
        ),
      )
    );
  }
}