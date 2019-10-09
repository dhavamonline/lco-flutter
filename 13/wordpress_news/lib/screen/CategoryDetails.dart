import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:http/http.dart' as http;
import 'package:wordpress_news/screen/NewsDetails.dart';

class CategoryDetails extends StatefulWidget {
  final int id;
  final String name;
  CategoryDetails({Key key, @required this.id, this.name}) : super(key: key);
  @override
  _CategoryDetailsState createState() => _CategoryDetailsState(
        id: id,
        name: name,
      );
}

class _CategoryDetailsState extends State<CategoryDetails> {
  int id;
  String name;
  _CategoryDetailsState({
    Key key,
    @required this.id,
    this.name,
  });

  var data;

  bool isLoading = true;

  String url;

  @override
  initState() {
    this.url =
        "https://www.simplifiedcoding.net/wp-json/wp/v2/posts?categories=$id";
    super.initState();
    this.getjsondata();
  }

  Future<String> getjsondata() async {
    var response = await http.get(
      Uri.encodeFull(url),
    );
    setState(() {
      var convertdatatojson = json.decode(response.body);
      data = convertdatatojson;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        width: double.infinity,
        height: double.infinity,
        child: Center(
            child: isLoading
                ? CircularProgressIndicator()
                : ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (BuildContext context, int index) =>
                        GestureDetector(
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
                                data[index]["jetpack_featured_media_url"]),
                            Text(
                              data[index]['title']['rendered'],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Html(data: data[index]['excerpt']['rendered']),
                            // Text(data[index]['excerpt']['rendered'])
                          ],
                        ),
                      ),
                    ),
                  )),
      ),
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
