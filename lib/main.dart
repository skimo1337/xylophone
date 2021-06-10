import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playn(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Expanded buildr(int x, MaterialColor y) {
    return Expanded(
      child: FlatButton(
        color: y,
        onPressed: () {
          playn(x);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildr(1, Colors.red),
              buildr(2, Colors.orange),
              buildr(3, Colors.yellow),
              buildr(4, Colors.green),
              buildr(5, Colors.teal),
              buildr(6, Colors.blue),
              buildr(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
