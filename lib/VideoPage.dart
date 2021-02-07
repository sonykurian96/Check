import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  WebViewController controller;

  @override
  Widget build(BuildContext context) {
    String _data = ModalRoute.of(context)
        .settings
        .arguments; // fetches data from another page

    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Video Section"),
      //   centerTitle: true,
      //   backgroundColor: Colors.orange[500],
      // ),
      body: SafeArea(
        child: Stack(children: [
          WebView(
            initialUrl: _data,
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ]),
      ),
    );
  }
}
