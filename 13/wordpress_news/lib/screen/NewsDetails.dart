import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:share/share.dart';

class NewsDetails extends StatefulWidget {
  final String ttl;
  final String dsc;
  final String imgurl;
  NewsDetails({Key key, @required this.ttl, this.dsc, this.imgurl});
  @override
  _NewsDetailsState createState() =>
      _NewsDetailsState(ttl: ttl, dsc: dsc, imgurl: imgurl);
}

class _NewsDetailsState extends State<NewsDetails> {
  String ttl;
  String dsc;
  String imgurl;
  _NewsDetailsState({Key key, @required this.ttl, this.dsc, this.imgurl});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxScrolled) {
        return <Widget>[
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            child: SliverAppBar(
              expandedHeight: 150,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  ttl,
                  style: TextStyle(color: Colors.white),
                ),
                background: Image(
                  image: NetworkImage(imgurl),
                ),
              ),
            ),
          )
        ];
      },
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: <Widget>[
              Html(data: dsc),
              MaterialButton(
                child: Text("Share"),
                onPressed: (){Share.share("Check out my news $ttl");},
              )
            ],
          ),
        ),),
      ),
    );
  }
}
