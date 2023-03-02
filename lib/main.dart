import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  int sendNote = 1;

  void playNote(int id) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$id.wav'),
    );
  }

  Widget createChild({int noteId = 1, required Color colorVal}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () async {
          playNote(noteId);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(colorVal),
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
              createChild(noteId: 1, colorVal: Colors.red),
              createChild(noteId: 2, colorVal: Colors.yellow),
              createChild(noteId: 3, colorVal: Colors.orange),
              createChild(noteId: 4, colorVal: Colors.teal),
              createChild(noteId: 5, colorVal: Colors.blue),
              createChild(noteId: 6, colorVal: Colors.green),
              createChild(noteId: 7, colorVal: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
