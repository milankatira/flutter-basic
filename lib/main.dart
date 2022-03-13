import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded BuildKey(int soundNumber, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              BuildKey(1, Colors.red),
              BuildKey(2, Colors.orange),
              BuildKey(3, Colors.yellow),
              BuildKey(4, Colors.green),
              BuildKey(5, Colors.teal),
              BuildKey(6, Colors.blue),
              BuildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
