import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  int sendNote = 1;

  void playNote(int id) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$id.wav'),
    );
  }

  Expanded createChild({int noteId = 1, required Color colorVal}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () async {
          playNote(noteId);
        },
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(colorVal),
        ),
        child: null,
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text('Xylophone'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //  createChild(sendNote = 1, colorVal: Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
