import 'package:flutter/material.dart';
import 'package:linked_in/last.dart';
import 'package:linked_in/new.dart';
import 'package:linked_in/people.dart';
import 'home.dart';
import 'notifi.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int current = 0;
  Widget caller(int index) {
    switch (index) {
      case 0:
        {
          return Home();
        }
        break;
      case 1:
        {
          return People();
        }
        break;
      case 2:
        {
          return New();
        }
        break;
      case 3:
        {
          return Notification1();
        }
        break;
      case 4:
        {
          return Last();
        }
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xff0077b5),
        leading: Icon(Icons.people_outline),
        actions: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            height: double.infinity,
            width: 270,
            child: TextField(
              decoration:
                  InputDecoration(hintText: 'search', icon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.grid_on)),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.question_answer),
          ),
        ],
      ),
      body: caller(current),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current,
        onTap: (value) {
          setState(() {
            current = value;
          });
        },
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline,size: 35,),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business_center),
              title: Text(""),
            ),
          ]),
    );
  }
}
