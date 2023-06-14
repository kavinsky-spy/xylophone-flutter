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
                      playSound(1);
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      color: Colors.red,
                    )),
                TextButton(
                    onPressed: () {
                      playSound(2);
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      color: Colors.deepOrange,
                    )),
                TextButton(
                    onPressed: () {
                      playSound(3);
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      color: Colors.amberAccent,
                    )),
                TextButton(
                    onPressed: () {
                      playSound(4);
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      color: Colors.green,
                    )),
                TextButton(
                    onPressed: () {
                      playSound(5);
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      color: Colors.green[900],
                    )),
                TextButton(
                    onPressed: () {
                      playSound(6);
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      color: Colors.blue,
                    )),
                TextButton(
                    onPressed: () {
                      playSound(7);
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
