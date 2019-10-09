import 'dart:math';

import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("About this News App",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            Text("Application developed by Thavas & Team",
                style: TextStyle(color: Colors.lightGreen, fontSize: 15)),
            Stack(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    AnimatedContainer(
                      // width: selected ? 200.0 : 100.0,

                      // height: selected ? 100.0 : 200.0,

                      // alignment: selected

                      //     ? Alignment.center

                      //     : Alignment.center,

                      duration: Duration(seconds: 2),

                      curve: Curves.fastOutSlowIn,

                      padding: selected
                          ? EdgeInsets.fromLTRB(170, 100, 10, 250)
                          : EdgeInsets.all(40),

                      // child: FlutterLogo(size: 75),

                      child: MaterialButton(
                        color: selected ? Colors.blue : Colors.green,

                        shape: selected
                            ? RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0))
                            : RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),

                        onPressed: () {
                          setState(() {
                            selected = !selected;
                          });
                        },

                        // color: Colors.green,

                        height: 50,

                        minWidth: 110,

                        child: Text(
                          "Rate our App",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Transform.rotate(
                    angle: pi / 6,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {},
                      color: Colors.green,
                      height: 50,
                      minWidth: 110,
                      child: Text(
                        "Privacy Policy",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Transform.rotate(
                    angle: -pi / 6,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {},
                      color: Colors.green,
                      height: 50,
                      minWidth: 110,
                      child: Text(
                        "More Apps",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
