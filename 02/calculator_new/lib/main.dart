import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String output = "0";  
  String _output="0";
  double num1=0.0;
  double num2=0.0;
  String operand="";

  buttonPressed( String buttonText){
    if(buttonText=="Clear"){
    _output="0";
    num1=0.0;
    num2=0.0;
    operand="";
    }else if(buttonText=="+" || buttonText=="-" || buttonText=="x"||buttonText=="/" ) {
      num1 = double.parse(output);
      operand=buttonText;
      _output="0";
    } else if(buttonText=="."){
      if(_output.contains(".")){
        print("Already Contains Decimal Value");
      } else{
        _output=_output+buttonText;
      }
    }else if(buttonText=="="){
      num2=double.parse(output);

      if(operand=="+"){
        _output=(num1+num2).toString();
      }  if(operand=="-"){
        _output=(num1+num2).toString();
      }  if(operand=="x"){
        _output=(num1+num2).toString();
      }  if(operand=="/"){
        _output=(num1+num2).toString();
      } 
        num1=0.0;
        num2=0.0;
        operand="";
    }  else {
      _output=_output+buttonText;
    }
    print(_output);
    setState(() {
     output=double.parse(_output).toStringAsFixed(2); 
    });
  }
   
  Widget buildButton(String buttonText) {
    return new Expanded(
      child: new OutlineButton(
        padding: EdgeInsets.all(24.0),
        child: new Text(buttonText,
        style: TextStyle(
          fontSize: 20.0
        ),),
        onPressed: () {
          buttonPressed(buttonText);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
          backgroundColor: Colors.lightGreen,
        ),
        body: new Container(
          child: new Column(
            children: <Widget>[
              
              new Container(
                alignment: Alignment.centerRight,
                padding: new EdgeInsets.symmetric(
                  vertical: 24.0,
                  horizontal: 12.0,
                ),
                child: new Text(output, 
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                ),),
              ),

              new Expanded(
                child: new Divider(),
              ),
              new Row(
                children: <Widget>[
                  buildButton("7"),
                  buildButton("8"),
                  buildButton("9"),
                  buildButton("/")
                ],
              ),
               new Row(
                children: <Widget>[
                  buildButton("4"),
                  buildButton("5"),
                  buildButton("6"),
                  buildButton("x")
                ],
              ),
               new Row(
                children: <Widget>[
                  buildButton("1"),
                  buildButton('2'),
                  buildButton('3'),
                  buildButton('-')
                ],
              ),
               new Row(
                children: <Widget>[
                  buildButton('0'),
                  buildButton("00"),
                  buildButton("."),
                  buildButton("+")
                ],
              ),
               new Row(
                children: <Widget>[
                  buildButton('Clear'),
                  buildButton("="),
                ],
              )
            ],
          )
        )
      )
    );
  }
}
