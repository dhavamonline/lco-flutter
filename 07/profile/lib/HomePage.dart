import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  ClipPath(
                    clipper: MyClipper(),
                    child: Container(
                      height: 400.0,
                      color: Colors.redAccent,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 200.0, left: 120),
                    child: ClipOval(
                        child: Container(
                      // color: Colors.blue,
                      height: 100.0,
                      width: 100.0,
                      child: Image.asset("assets/logo.jpg"),
                      // child: Image.asset("assets/logo.jpg"),
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 350.0),
                    child: Container(
              padding: EdgeInsets.only(top: 20.0),
              child: Column(
                children: <Widget>[
                  Text("Thavaselvan",
                  style: TextStyle(fontSize: 35.0,
                  color: Colors.redAccent),),
                  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "PROGRAMMER",
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(20.0),
                     child: Row(
                    children: <Widget>[
                      Text("100 K+ \n Projects",
                      style: TextStyle(fontSize: 20.0,
                      color: Colors.red
                      )),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text("700 K+ \n Apps",
                      style: TextStyle(fontSize: 20.0,
                      color: Colors.red
                      )),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text("40 K+ \n Repos",
                      style: TextStyle(fontSize: 20.0,
                      color: Colors.red
                      ))
                    ],
                  ),
                  ),
                ],
              ),
              Container(
                    child: MaterialButton(
                      minWidth: 150.0,
                      child: Text("Follow",
                      style: TextStyle(color: Colors.white),),
                      onPressed: (){},
                      color: Colors.redAccent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      // shape: RoundRangeSliderThumbShape()
                    ),
                  )
                ],
              ),
            ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path p = Path();
    p.lineTo(0, size.height);
    p.lineTo(size.width, 100);
    p.lineTo(size.width, 0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
