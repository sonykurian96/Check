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
    // String _data = ModalRoute.of(context)
    //     .settings
    //     .arguments; // fetches data from another page

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: 1.0),
        duration: Duration(milliseconds: 1250),
        child: SafeArea(
            child: Container(
          color: Colors.amber,
          width: 405,
          height: 650,
          child: Text(
            "hello",
            style: TextStyle(fontSize: 50),
          ),
        )),
        builder: (context, value, child) {
          return ShaderMask(
            blendMode: BlendMode.modulate,
            shaderCallback: (rect) {
              return RadialGradient(
                colors: [
                  Colors.white,
                  Colors.white,
                  Colors.transparent,
                  Colors.transparent
                ],
                stops: [0.0, 0.55, 0.6, 1.0],
                center: FractionalOffset(0.95, 0.90),
                radius: value * 5,
              ).createShader(rect);
            },
            child: child,
          );
        },
      ),
    );
  }
}
