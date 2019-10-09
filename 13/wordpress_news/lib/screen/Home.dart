import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:wordpress_news/screen/NewsDetails.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

final String url = "https://www.simplifiedcoding.net/wp-json/wp/v2/posts";
var data;
bool isLoading = true;

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    this.getjsondata();
  }

  Future getjsondata() async {
    var response = await http.get(Uri.encodeFull(url));
    setState(() {
      var convertdatatojson = json.decode(response.body);
      data = convertdatatojson;
      isLoading = false;
    });
  }

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
          child: isLoading
              ? CircularProgressIndicator()
              : ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return GestureDetector(
                      onTap: () => _viewnews(
                          data[index]['title']['rendered'],
                          data[index]['excerpt']['rendered'],
                          data[index]["jetpack_featured_media_url"]),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: <Widget>[
                            Image.network(
                                data[index]['jetpack_featured_media_url']),
                            Text(data[index]['title']['rendered']),
                            Html(data: data[index]["excerpt"]["rendered"])
                          ],
                        ),
                      ),
                    );
                  },
                )),
    );
  }

  _viewnews(String ttl, String dsc, String imgurl, {data}) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => NewsDetails(
                  ttl: ttl,
                  dsc: dsc,
                  imgurl: imgurl,
                )));
  }
}
