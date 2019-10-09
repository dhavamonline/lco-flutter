import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Highlights extends StatefulWidget {
  @override
  _HighlightsState createState() => _HighlightsState();
}

class _HighlightsState extends State<Highlights> {
  final String url =
      "https://newsapi.org/v2/everything?q=apple&from=2019-09-23&to=2019-09-23&sortBy=popularity&apiKey=4c6b15076998468a80a39a8522652928";
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
      body: Container(
          child: Center(
              child: isLoading
                  ? CircularProgressIndicator()
                  : new Swiper(
                      itemBuilder: (BuildContext context, index) {
                        return new Card(
                          margin: EdgeInsets.all(15),
                          color: Colors.lightGreen,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(data["articles"][index]["urlToImage"]), alignment: Alignment.topCenter, fit: BoxFit.contain)),
                            height: 500,
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Center(
                                  child: ListTile(
                                    title: Text(data["articles"][index]["title"],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,fontSize: 20 )),
                                    subtitle: Text(
                                        data["articles"][index]["description"],
                                        style: TextStyle(color: Colors.white)),
                                    onTap: () => _sendToNextScreen(index),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Text("source: " +
                                    data["articles"][index]["source"]["name"]),
                                SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: 5,
                      viewportFraction: 0.9,
                      scale: 0.5,
                    ))),
    );
  }

  _sendToNextScreen(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Fullnews(data: data, index: index)));
  }
}

class Fullnews extends StatelessWidget {
  final data;
  final index;
  Fullnews({Key key, @required this.data, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data["articles"][index]["source"]["name"]),
      ),
      body: Container(
        child: WebView(
          initialUrl: data["articles"][index]["url"],
        ),
      ),
    );
  }
}
