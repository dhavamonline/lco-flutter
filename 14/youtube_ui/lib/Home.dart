import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:youtube_ui/VideoApp.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String url = "http://userapi.tk/youtube";
  List data;
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement inistatae;
    super.initState();
    this.getjsondata();
  }

  Future<String> getjsondata() async {
    var response = await http.get(
      // encode url
      Uri.encodeFull(url),
    );
    print(response.body);
    setState(() {
      var convertDatatoJson = json.decode(response.body);
      data = convertDatatoJson;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: isLoading
          ? CircularProgressIndicator()
          : ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, index) {
                return Container(
                    child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        videoplay(
                            data[index]['VideoURL'],
                            data[index]['Title'],
                            data[index]['ProfileiconURL'],
                            data[index]['Name'],
                            data[index]['Views']);
                      },
                      child: SizedBox(
                        child: Image.network(data[index]['ThumbmnilURL']),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(data[index]['ProfileiconURL']),
                      ),
                      title: GestureDetector(
                          onTap: () {
                            videoplay(
                                data[index]['VideoURL'],
                                data[index]['Title'],
                                data[index]['ProfileiconURL'],
                                data[index]['Name'],
                                data[index]['Views']);
                          },
                          child: Text(data[index]['Title'])),
                      subtitle:  GestureDetector(
                    onTap: () {
                      videoplay(
                          data[index]['VideoURL'],
                          data[index]['Title'],
                          data[index]['ProfileiconURL'],
                          data[index]['Name'],
                          data[index]['Views']);
                    },
                                              child: Text(data[index]['Name'] +
                            data[index]['Views'] +
                            data[index]['Day']),
                      ),
                    )
                  ],
                ));
              },
            ),
    );
  }

  videoplay(
      String vurl, String vtitle, String vicon, String vname, String vviews) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => VideoApp(
                url: vurl,
                title: vtitle,
                icon: vicon,
                name: vname,
                views: vviews)));
  }
}
