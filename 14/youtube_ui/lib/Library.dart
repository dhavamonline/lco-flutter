import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Library extends StatefulWidget {
  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
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
    return SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 300, 0),
            child: Text(
              "Recent",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            height: 157,
            width: 800,
            child: Center(
              child: isLoading
                  ? CircularProgressIndicator()
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: data.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, index) {
                        return Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Container(
                                height: 90,
                                width: 150,
                                child: Card(
                                  color: Colors.grey,
                                  child: Image(
                                    image:
                                        NetworkImage(data[index]["ThumbmnilURL"]),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                                height: .6,
                                width: 120,
                                child: Divider(
                                  thickness: 4,
                                  color: Colors.red,
                                  endIndent: 80,
                                )),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  data[index]["Title"],
                                  style: TextStyle(fontSize: 15),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Icon(Icons.more_vert),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 100, 0),
                              child: Text(
                                data[index]["Name"],
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
            ),
          ),
          Divider(
            height: 25,
            color: Colors.black38,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.history),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("Watch History"),
                    )
                  ],
                ),
                Container(
                  height: 25,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.file_download),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("Downloads"),
                    )
                  ],
                ),
                Container(
                  height: 25,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.perm_media),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("My videos"),
                    )
                  ],
                ),
                Container(
                  height: 25,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.label),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("Purchases"),
                    )
                  ],
                ),
                Container(
                  height: 25,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.watch_later),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("Watch later"),
                    )
                  ],
                ),
                Divider(
                  height: 25,
                  color: Colors.black38,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text("Playlists (Recently added) "),
                          ),
                          Icon(Icons.arrow_drop_down)
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB( 10,20,0,0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.thumb_up),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("Liked Videos"),
                    )
                  ],
                ),
                Container(
                  height: 25,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.folder_shared),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("Flutter"),
                    )
                  ],
                ),
                Container(
                  height: 25,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.perm_media),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("Dart"),
                    )
                  ],
                ),
                Container(
                  height: 25,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
