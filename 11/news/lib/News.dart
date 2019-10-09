import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:async';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  final String url =
      "https://gnews.io/api/v3/top-news?token=d77506110525c130a883f160c2e66be9";
  var data;
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
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            height: 50,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                OutlineButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text("Tech", style: TextStyle(fontSize: 13, color: Colors.black)),
                  onPressed: () {},
                ),
                OutlineButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text("Entertainment", style: TextStyle(fontSize: 13)),
                  onPressed: () {},
                ),
                OutlineButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text("Political", style: TextStyle(fontSize: 13)),
                  onPressed: () {},
                ),
                OutlineButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text("Sports", style: TextStyle(fontSize: 13)),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            child: Center(
                child: Container(
              height: 493,
              width: double.infinity,
              child: isLoading
                  ? CircularProgressIndicator()
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: 9,
                      itemBuilder: (BuildContext context, int index) {
                        return new Card(
                          margin: EdgeInsetsDirectional.only(bottom: 20),
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: SizedBox(
                                    height: 100.0,
                                    width: 100.0, // fixed width and height
                                    child: data["articles"][index]["image"] ==
                                            null
                                        ? Image.network(
                                            "http://www.identdentistry.ca/identfiles/no_image_available.png")
                                        : Image.network(
                                            data["articles"][index]["image"])),
                                title: Text(data["articles"][index]["title"],style: TextStyle(color: Colors.green, fontSize: 20),),
                              )
                            ],
                          ),
                        );
                      },
                    ),
            )),
          ),
        ],
      ),
    );
  }
}
