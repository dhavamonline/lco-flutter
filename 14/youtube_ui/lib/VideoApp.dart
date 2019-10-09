import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoApp extends StatefulWidget {
  final String url;
  final String title;
  final String name;
  final String views;
  final String icon;
  VideoApp(
      {Key key,
      @required this.url,
      this.title,
      this.name,
      this.views,
      this.icon})
      : super(key: key);
  @override
  _VideoAppState createState() => _VideoAppState(
      url: url, title: title, name: name, views: views, icon: icon);
}

class _VideoAppState extends State<VideoApp> {
  String url;
  String title;
  String name;
  String views;
  String icon;

  _VideoAppState(
      {Key key,
      @required this.url,
      this.title,
      this.name,
      this.views,
      this.icon});

  @override
  void initState() {
    super.initState();
    this.getjsondata();
    _controller = VideoPlayerController.network(url)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {
          _controller.play();
        });
      });
  }

  VideoPlayerController _controller;

  final String url1 = "http://userapi.tk/youtube";
  List data;
  bool isLoading = true;

  Future<String> getjsondata() async {
    var response = await http.get(
      // encode url
      Uri.encodeFull(url1),
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
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.black,
              child: _controller.value.initialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : Container(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: ListTile(
                title: Text(
                  title,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.arrow_drop_down),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 260.0),
              child: Text(views + ' views'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(Icons.thumb_up),
                    SizedBox(
                      height: 5,
                    ),
                    Text("1.7K")
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.thumb_down),
                    SizedBox(
                      height: 5,
                    ),
                    Text("56")
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.share),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Share")
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.file_download),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Download")
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.playlist_add),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Save")
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              height: 1,
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  radius: 24,
                  backgroundImage: NetworkImage(icon),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                    ),
                    Text("10K subscribers")
                  ],
                ),
                Image.asset(
                  'assets/you.png',
                  scale: 40,
                ),
                Text(
                  "SUBSCRIBE",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              height: .6,
              color: Colors.grey,
            ),
            Container(
                child: isLoading
                    ? CircularProgressIndicator()
                    : ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (BuildContext context, index) {
                          return SingleChildScrollView(
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 150,
                                    width: 150,
                                    child: Image.network(
                                        data[index]['ThumbmnilURL']),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
