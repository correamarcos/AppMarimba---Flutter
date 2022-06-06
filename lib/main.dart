import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';
// import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound(int numberSound){
    final player = AudioCache();
    player.play('nota$numberSound.wav');
  }

  Expanded createButton(Color cor, int numberSound){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: cor),
        onPressed: (){
          playSound(numberSound);
        }, child: Text(''),
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
            children:[
              createButton(Colors.teal, 1),
              createButton(Colors.blue, 2),
              createButton(Colors.yellow, 3),
              createButton(Colors.red, 4),
              createButton(Colors.grey, 5),
              createButton(Colors.deepPurpleAccent, 6),
              createButton(Colors.brown, 7),
            ]
          ),
        ),
      ),
    );
  }
}
