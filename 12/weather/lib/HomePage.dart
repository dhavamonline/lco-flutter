import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var url ="https://openweathermap.org/data/2.5/weather?q=Jaipur&appid=b6907d289e10d714a6e88b30761fae22";
  var data;
  bool isLoading=true;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getjsondata();
  }

  Future<String> getjsondata() async {
        var response= await http.get(
          Uri.encodeFull(url),
        );
        print(response.body);
        setState(() {
         var convertDatatoJson= json.decode(response.body);
         data=convertDatatoJson;
         isLoading=false; 
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: this.getjsondata,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
        child: Card(
          color: Color(0xffEAF0F1),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: <Widget>[
              Image.network("https://img.pngio.com/weather-png-hd-weather-png-transparent-480_480.png"),
              Text("Temp: ${data["main"]["temp"]}", style: TextStyle(color: Colors.blue,fontSize: 30)),
              Text("Pressure: ${data["main"]["pressure"]}", style: TextStyle(color: Colors.red,fontSize: 30)),
              Text("Max Temp: ${data["main"]["temp_max"]}", style: TextStyle(color: Colors.green,fontSize: 30)),
              Text("Max Temp: ${data["main"]["temp_max"]}", style: TextStyle(color: Colors.green,fontSize: 30))
            ],
          ),
        ),
      ),
    );
  }
}