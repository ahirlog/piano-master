import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Expanded soundKey({required Color keyColor, required int fileNumber}) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        child: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: 100, vertical: 40),
            ),
            backgroundColor: MaterialStateProperty.all(keyColor),
          ),
          onPressed: () {
            AudioCache audioCache = AudioCache();
            audioCache.play('note$fileNumber.wav');
          },
          child: Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              soundKey(keyColor: Colors.redAccent, fileNumber: 1),
              soundKey(keyColor: Colors.blueAccent, fileNumber: 2),
              soundKey(keyColor: Colors.cyanAccent, fileNumber: 3),
              soundKey(keyColor: Colors.limeAccent, fileNumber: 4),
              soundKey(keyColor: Colors.pinkAccent, fileNumber: 5),
              soundKey(keyColor: Colors.tealAccent, fileNumber: 6),
              soundKey(keyColor: Colors.greenAccent, fileNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
