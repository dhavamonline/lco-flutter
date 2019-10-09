import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num1 = 0;

  var l = [5,9,4,5,66,44,45,76,23,12];
  int aj = 0;
  add(int index) {
    setState(() {
      num1 = num1 + l[index];
    });
  }

  changeamount() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 200.0,
              width: double.infinity,
              color: Colors.black12,
              child: Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "$num1",
                              style: TextStyle(
                                  fontSize: 50.0, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Total Amount You Win",
                              style: TextStyle(fontSize: 30.0),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext index, i) {
                  return Scratcher(
                    brushSize: 80,
                    threshold: 30,
                    color: Colors.lightBlue,
                    onChange: (amount) {
                      // print("Scratch progress: $%");
                    },
                    onThreshold: () {
                      changeamount();
                      add(i);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "${l[i]}",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      height: 150.0,
                      width: 150.0,
                      color: Colors.green,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
