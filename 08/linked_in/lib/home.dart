import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                  "https://cdn3.iconfinder.com/data/icons/inficons/512/stackoverflow.png"))
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Stack Overflow",
                          style:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "175,209 followers",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          "3w",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(150, 0, 8, 15),
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(
                          text:
                              'Stack Overflow is a question and answer site for professional and enthusiast programmers. It is a privately held website ',
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                                text: '... see more',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                    ),
                    Image.network(
                        "https://www.link3.net/wp-content/uploads/2016/08/cooder-img-1.jpg")
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Icon(Icons.thumb_up),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 90),
                      child: Icon(Icons.comment),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 130),
                      child: Icon(Icons.share),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                  "https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png"))
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Flutter Dev",
                          style:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "230,187 followers",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          "1m",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(150, 0, 8, 15),
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(
                          text:
                              'Flutter is an open-source mobile application development framework created by Google ',
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                                text: '... see more',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                    ),
                    Image.network(
                        "https://miro.medium.com/max/3200/1*73IgUxPfyXUKZAaIXgutrw.png")
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Icon(Icons.thumb_up),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 90),
                      child: Icon(Icons.comment),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 130),
                      child: Icon(Icons.share),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                  "https://pbs.twimg.com/profile_images/993555605078994945/Yr-pWI4G_400x400.jpg"))
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Dart Devs",
                          style:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "565,769 followers",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          "1w",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(150, 0, 8, 15),
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(
                          text:
                              'Dart is a client-optimized programming language for fast apps on multiple platforms. It is developed by Google and is used to build mobile, ',
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                                text: '... see more',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                    ),
                    Image.network(
                        "https://i.udemycdn.com/course/480x270/1762946_60c3_2.jpg")
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Icon(Icons.thumb_up),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 90),
                      child: Icon(Icons.comment),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 130),
                      child: Icon(Icons.share),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
