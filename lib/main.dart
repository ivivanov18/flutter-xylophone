import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int keySound, Color keyColor}) {
    return Expanded(
      child: FlatButton(
        color: keyColor,
        onPressed: () {
          playSound(keySound);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(keySound: 1, keyColor: Colors.redAccent),
              buildKey(keySound: 2, keyColor: Colors.orange),
              buildKey(keySound: 3, keyColor: Colors.yellow),
              buildKey(keySound: 4, keyColor: Colors.greenAccent),
              buildKey(keySound: 5, keyColor: Colors.green),
              buildKey(keySound: 6, keyColor: Colors.blue),
              buildKey(keySound: 7, keyColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
