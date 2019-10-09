import 'package:flutter/material.dart';

class People extends StatefulWidget {
  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  var image = [
    AssetImage("assets/one.png"),
    AssetImage("assets/two.jpg"),
    AssetImage("assets/three.jpg"),
    AssetImage("assets/four.png"),
    AssetImage("assets/five.png"),
    AssetImage("assets/six.jpg")
  ];

  var name = ["Spotify", "Dominos", "Apple", "Twitter", "Adidas", "Instagram"];
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white70,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: .7, crossAxisCount: 2),
            itemCount: 6,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                  color: Colors.white10,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn5.vectorstock.com/i/1000x1000/35/69/paper-with-two-color-background-idea-for-banner-vector-19663569.jpg"))),
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 30,
                          ),
                          CircleAvatar(
                              radius: 30, backgroundImage: (image[index])),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              name[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          MaterialButton(
                            elevation: 100,
                            color: Colors.white,
                            onPressed: () {},
                            child: Text("CONNECT"),
                          )
                        ],
                      ),
                    ),
                  ));
            }));
  }
}
