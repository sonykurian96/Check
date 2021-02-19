import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text("SecondScreen"),
        centerTitle: true,
      ),
      body: SafeArea(
            child: Container(
              color: Colors.amber,
              width: 415,
              height: 657,
              child: Text(
                "hello",
                style: TextStyle(fontSize: 50),
              ),
            )),
    );
  }
}
