import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
        child: FlatButton(
      color: color,
      onPressed: () {
        playSound(soundNumber);
      },
    ));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.pinkAccent, soundNumber: 1),
              buildKey(color: Colors.purpleAccent, soundNumber: 2),
              buildKey(color: Colors.purple, soundNumber: 3),
              buildKey(color: Colors.deepPurple, soundNumber: 4),
              buildKey(color: Colors.lightGreenAccent, soundNumber: 5),
              buildKey(color: Colors.greenAccent, soundNumber: 6),
              buildKey(color: Colors.green, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
