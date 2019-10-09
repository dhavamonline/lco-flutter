import 'package:flutter/material.dart';

class HomPage extends StatefulWidget {
  @override
  _HomPageState createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Scratch App"),
        ),
        body: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 200,
                  width: double.infinity,
                  // decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //         fit: BoxFit.fill,
                  //         image: NetworkImage(
                  //             "https://www.thenewsminute.com/sites/default/files/styles/news_detail/public/Investment_money_pixabayByNattananKanchanaprat.jpg"))),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Text("Rs."),
                ),
                Text(
                  "Total Amount",
                  style: TextStyle(fontSize: 40.0),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Text(
                    "you reward",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
