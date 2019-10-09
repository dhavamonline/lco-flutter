import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final String url = "http://userapi.tk/";
  List data;
 bool isLoading = true;

  @override
  void initState() {
    // TODO: implement inistatae;
    super.initState();
    this.getjsondata();

  }
  
  Future<String> getjsondata() async {
    var response=await http.get(
      // encode url
      Uri.encodeFull(url),
    );
      print(response.body);
      setState(() {
       var convertDatatoJson=json.decode(response.body);
       data=convertDatatoJson;
       isLoading=false;
      });
      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Data"),
      ),
      body: Container(
        child: Center(
          child: isLoading ? CircularProgressIndicator():ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index){
              return new Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(data[index]["ImageURL"]),
                      ),
                      title: Text(data[index]["Name"]+data[index]["ID"]),
                      subtitle: Text(data[index]["EmailID"]),
                    )

                    // DecorationImage(image: NetworkImage(data["articles"][index]["image"]),)
                  ],
                ),
              );
            },
          )
        ),
      ),
    );
  }
}