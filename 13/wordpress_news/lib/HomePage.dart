import 'package:flutter/material.dart';
import 'package:wordpress_news/screen/About.dart';
import 'package:wordpress_news/screen/Category.dart';
import 'package:wordpress_news/screen/Home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;

  var pages = [Home(), Category(), About()];

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wordpress"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {},
          )
        ],
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("Category")),
          BottomNavigationBarItem(
              icon: Icon(Icons.new_releases), title: Text("About")),
        ],
      ),
    );
  }
}
