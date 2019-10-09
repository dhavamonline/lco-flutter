import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var email=TextEditingController();
  var pass=TextEditingController();
  var show="";
  login(){
    String email1="Thavas";
    String pass1="1234";
    if(email==email1 && pass==pass1){
      show="Login Successfull";
    } else{
      show="Please Try Again";
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text ("Login App"),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Welcome To Login"),
              TextField(
                controller: email,
                decoration: InputDecoration(
                  hintText: "Email"
                )),
                TextField(
                  controller: pass,
                decoration: InputDecoration(
                  hintText: "password"
                )),
                RaisedButton(
                  child: Text("Login"),
                  onPressed: () => login
                ),
                RaisedButton(
                  child: Text("SignUp"),
                  onPressed: (){},
                ),
                Container(
                  child: Text(show),
                )
            ],
          ),
        ),
      ),
      
    );
  }
}