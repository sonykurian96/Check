import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spam_bot/VideoPage.dart';
import 'package:spam_bot/pageWaveTransition.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
    ),
  );
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My first package"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
              Navigator.push(
                context,PageRouteBuilder(
                  pageBuilder: (context, animation, _) {
                    return WaveTransition(
                      targetPage: VideoPage(),
                      fromCenter: FractionalOffset(0.50,0.90),
                    );
                  },
                  opaque: false)
              );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
