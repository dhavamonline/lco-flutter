import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  var email = TextEditingController();
  var pass = TextEditingController();
  var checker = TextEditingController();
  loginp() {
    String semail = "abcd@gmail.com";
    String spass = "12345678";
    String suc = "success";
    String fail = "fail";
    if (email.text == semail && pass.text == spass) {
      checker.text = suc;
    } else {
      checker.text = fail;
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Login",
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.grey,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.account_box),
              onPressed: () => loginp(),
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "enter email",
              ),
              controller: email,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "enter password",
              ),
              controller: pass,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "checker",
              ),
              controller: checker,
            ),
          ],
        ),
      ),
    );
  }
}
