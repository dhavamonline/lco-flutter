import 'package:flutter/material.dart';
import 'package:news/About.dart';
import 'package:news/Highlights.dart';
import 'package:news/News.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;

  Widget pageCall(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return Highlights();
        break;
      case 1:
        return News();
        break;
      case 2:
        return About();
        break;
    }
  }

  Icon custIcon = Icon(Icons.search);
  Widget cusSearchBar = Text("News Awesome");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: cusSearchBar,
        backgroundColor: Colors.green,
        actions: <Widget>[
          InkWell(
            child: SizedBox(
              child: IconButton(
                icon: custIcon,
                onPressed: () {
                  setState(() {
                    if (this.custIcon.icon == Icons.search) {
                      this.custIcon = Icon(Icons.cancel);
                      this.cusSearchBar = TextField(
                        decoration: InputDecoration(
                            hintText: "Search Anythink",
                            hintStyle: TextStyle(color: Colors.white)),
                        style: TextStyle(color: Colors.white, fontSize: 15),
                        autofocus: true,
                      );
                    } else {
                      this.custIcon = Icon(Icons.search);
                      this.cusSearchBar = Text("News Awesome");
                    }
                  });
                },
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
              );
            },
          )
        ],
      ),
      body: pageCall(_currentIndex),
      bottomNavigationBar: _bottomNav(),
    );
  }

  Widget _bottomNav() {
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        selectedItemColor: Colors.lightGreen,
        type: BottomNavigationBarType.fixed,
        items: [
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.web,
              ),
              title: Text(
                'Highlights',
              )),
          new BottomNavigationBarItem(
              icon: Icon(Icons.chrome_reader_mode),
              title: Text(
                'News',
              )),
          new BottomNavigationBarItem(
              icon: Icon(Icons.report_problem),
              title: Text(
                'About',
              )),
        ]);
  }
}
