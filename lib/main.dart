import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void play(int soundnumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundnumber.wav'));
  }

  Expanded buildkey({Color? color, int? soundnumber}) {
    return Expanded(
      // ignore: deprecated_member_use
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          play(soundnumber!);
        },
        child: const Text('click me'),
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
              buildkey(color: Colors.red, soundnumber: 1),
              buildkey(color: Colors.orange, soundnumber: 2),
              buildkey(color: Colors.blue, soundnumber: 3),
              buildkey(color: Colors.yellow, soundnumber: 4),
              buildkey(color: Colors.green, soundnumber: 5),
              buildkey(color: Colors.teal, soundnumber: 6),
              buildkey(color: Colors.purple, soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
