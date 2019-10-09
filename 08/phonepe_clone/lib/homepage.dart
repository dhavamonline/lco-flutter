import 'package:flutter/material.dart';
import 'package:phonepe_clone/Home.dart';
import 'package:phonepe_clone/histry.dart';
import 'package:phonepe_clone/MyMoney.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;

  Widget pageCall(int currentIndex) {
    switch(currentIndex) {
      case 0:
        return Home();
        break;
      case 1:
        return HomePage();
        break;
      case 2:
        return HomePage();
        break;
      case 3:
        return MyMoney();
        break;
      case 4:
        return Histry();
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        iconTheme: IconThemeData(color: Colors.white),
        leading: Icon(Icons.people),
        actions: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  "Your location",
                  style: TextStyle(fontSize: 10.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Jaipur",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
            ],
          ),
          Container(
            width: 240,
            height: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Icon(
                  Icons.code,
                  size: 30.0,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.notifications_active),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.help_outline),
                SizedBox(
                  width: 20,
                )
              ],
            ),
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
        selectedItemColor: Colors.deepPurple,
        type: BottomNavigationBarType.fixed,
        items: [
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text(
                'Home',
              )),
          new BottomNavigationBarItem(
              icon: Icon(Icons.store),
              title: Text(
                'Stores',
              )),
          new BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              title: Text(
                'Apps',
              )),
          new BottomNavigationBarItem(
              icon: Icon(Icons.attach_money),
              title: Text(
                'My Money',
              )),
          new BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text(
                'History',
              )),
        ]);
  }
}
