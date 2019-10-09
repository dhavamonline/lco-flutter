import 'package:flutter/material.dart';
import 'homepage.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _autovalidate = false;
  String name, email, mobile, collegename;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: new AppBar(title: new Text("Sign Up"),),
      body: Form(
        key: _key,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
          ),
          child: Column(
            children: <Widget>[
            new Padding(padding: EdgeInsets.all(10),),
            new Image(
              image: new AssetImage("assets/lcologo.png"),
              height: 100.0,
              width: 100.0,
            ),
            new ListTile(
              leading: const Icon(Icons.person),
              title: new TextFormField(
                validator: (input){
                  if(input.isEmpty){
                    return 'Enter Name';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Name"),
                  onSaved: (input) => name = input,
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.email),
              title: new TextFormField(
                validator: (input){
                  if(input.isEmpty){
                    return 'Enter Email';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Email"),
                  onSaved: (input) => email = input,
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.phone_android),
              title: new TextFormField(
                validator: (input){
                  if(input.isEmpty){
                    return 'Enter Mobile Number';
                  }
            return null;
                },
                decoration: InputDecoration(
                  labelText: "Mobile Number"),
                  onSaved: (input) => mobile = input,
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.school),
              title: new TextFormField(
                validator: (input){
                  if(input.isEmpty){
                    return 'Enter College Name';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "College Name"),
                  onSaved: (input) => collegename = input,
              ),
            ),
            MaterialButton(
              onPressed: () => _sendToNextScreen(),
              child: Text("Next"),
              color: Colors.blue,
            )
            ],
          ),
        ),
      ),
    );
  }

  _sendToNextScreen(){
    if(_key.currentState.validate()){
      _key.currentState.save();
      Navigator.push(context,
        MaterialPageRoute(builder: (context) => HomePage(
        name: name,
        mobile: mobile,
        collegename: collegename,
        email: email),
        ));
    } else{
      setState(() {
       // _autovalidate = true;
      });
    }
  }
}