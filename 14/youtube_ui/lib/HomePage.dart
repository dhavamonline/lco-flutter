import 'package:flutter/material.dart';
import 'package:youtube_ui/Home.dart';
import 'package:youtube_ui/Inbox.dart';
import 'package:youtube_ui/Library.dart';
import 'package:youtube_ui/Subscriptions.dart';
import 'package:youtube_ui/Trending.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _currentIndex = 0;

  var pages = [Home(),Trending(),Subscriptions(),Inbox(),Library()];

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.network('https://vignette.wikia.nocookie.net/hitlerparody/images/4/46/Yt-logo-2017.png', height: 35,),
        actions: <Widget>[
          Icon(Icons.videocam, color: Colors.black54, size: 25,),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.search,color: Colors.black54, size: 25,),
          SizedBox(
            width: 20,
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  maxRadius: 15,
                  minRadius: 10,
                  // backgroundColor: Colors.transparent,
                  backgroundImage:  NetworkImage('https://images.fastcompany.net/image/upload/w_596,c_limit,q_auto:best,f_auto/fc/3034007-inline-i-applelogo.jpg', scale: 0.5),
                ),
              ),
            ],
          ),
           SizedBox(
            width: 15,
          ),
        ],
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.red,
        onTap: onTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 25), title: Text("Home", style: TextStyle(fontSize: 10),)),
          BottomNavigationBarItem(
              icon: Icon(Icons.hot_tub, size: 25,), title: Text("Trending", style: TextStyle(fontSize: 10),)),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions, size: 25,), title: Text("Subscriptions", style: TextStyle(fontSize: 10),)),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail, size: 25), title: Text("Inbox", style: TextStyle(fontSize: 10),)),
          BottomNavigationBarItem(
              icon: Icon(Icons.folder, size: 25), title: Text("Library", style: TextStyle(fontSize: 10),)),
        ],
      ),
    );
  }
}