import 'package:flutter/material.dart';
import 'package:spam_bot/firstScreen.dart';
import 'package:wave_transition/wave_transition.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    ),
  );
}

// class App extends StatefulWidget {
//   @override
//   _AppState createState() => _AppState();
// }
//
// class _AppState extends State<App> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("My first package"),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.fromLTRB(30, 80, 10, 0),
//         child: Container(
//           width: 350,
//           height: 200,
//           color: Colors.blue,
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {
//               Navigator.push(
//                 context, WaveTransition(
//                   child: VideoPage(),
//                   center: FractionalOffset(0.90,0.90),
//                 duration: Duration(milliseconds: 1200)
//               )
//             );
//         },
//       ),
//     );
//   }
// }
