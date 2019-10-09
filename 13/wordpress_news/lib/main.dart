import 'package:flutter/material.dart';
import 'package:wordpress_news/HomePage.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen/splashscreen.dart';
void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.blue,
          statusBarIconBrightness: Brightness.dark),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home : SplashScreen(
        seconds: 4,
        navigateAfterSeconds: HomePage(),
        // title: new Text('Welcome In Wordpress News',
        // style: new TextStyle(
        //   fontWeight: FontWeight.bold,
        //   fontSize: 20.0
        // ),),
        // image: new Image.network('https://cdn.searchenginejournal.com/wp-content/uploads/2019/07/top-6-awesome-wordpress-plugins-that-will-make-your-site-mobile-friendly-760x400.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        imageBackground: AssetImage("assets/splash.jpg"),
        onClick: ()=>print("Flutter Egypt"),
        loaderColor: Colors.red
      ),
    );
  }
}