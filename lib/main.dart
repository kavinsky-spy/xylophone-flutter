import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound() {}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Center(
                child: Column(
              children: [
                TextButton(
                    onPressed: () {
                      final player = AudioPlayer();
                      player.play(AssetSource('note1.wav'));
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      color: Colors.red,
                    )),
                TextButton(
                    onPressed: () {
                      final player = AudioPlayer();
                      player.play(AssetSource('note2.wav'));
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      color: Colors.deepOrange,
                    )),
                TextButton(
                    onPressed: () {
                      final player = AudioPlayer();
                      player.play(AssetSource('note3.wav'));
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      color: Colors.amberAccent,
                    )),
                TextButton(
                    onPressed: () {
                      final player = AudioPlayer();
                      player.play(AssetSource('note4.wav'));
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      color: Colors.green,
                    )),
                TextButton(
                    onPressed: () {
                      final player = AudioPlayer();
                      player.play(AssetSource('note5.wav'));
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      color: Colors.green[900],
                    )),
                TextButton(
                    onPressed: () {
                      final player = AudioPlayer();
                      player.play(AssetSource('note6.wav'));
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      color: Colors.blue,
                    )),
                TextButton(
                    onPressed: () {
                      final player = AudioPlayer();
                      player.play(AssetSource('note7.wav'));
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      color: Colors.purple,
                    )),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
