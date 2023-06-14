import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required int soundNumber, required Color colorButton}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: colorButton),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(soundNumber: 1, colorButton: Colors.red),
                buildKey(soundNumber: 2, colorButton: Colors.deepOrange),
                buildKey(soundNumber: 3, colorButton: Colors.yellow),
                buildKey(soundNumber: 4, colorButton: Colors.green),
                buildKey(soundNumber: 5, colorButton: Colors.green.shade900),
                buildKey(soundNumber: 6, colorButton: Colors.blue),
                buildKey(soundNumber: 7, colorButton: Colors.purple),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
