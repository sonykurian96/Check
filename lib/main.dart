import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spam_bot/customwidget.dart';

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

  bool displayAnswer = false;

  Widget button(){
    return RaisedButton(
      textColor: Colors.white,
      color: Colors.orange[500],
      child: Text("View Answer"),
      onPressed: () {
        setState(() {
          displayAnswer = true;
        });
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Welcome"),
      ),
      body: Column(
        children: [
          Custom(videoLink: "https://www.youtube.com/watch?v=W1pNjxmNHNQ",
            question: "question-1",
            answer: "answer-1",
            customRaisedButton: button(),
            isVisible: displayAnswer,
          )
        ],
      ),
    );
  }
}



