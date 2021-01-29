import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playsound(int sno){
    final player = AudioCache();
    player.play('note$sno.wav');

  }

  Expanded buildkey({Color color,int sno}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed:(){
          playsound(sno);
        },
        child: Text('click me'),
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
            children: [
              buildkey(color: Colors.red, sno: 1),
              buildkey(color: Colors.green, sno: 2),
              buildkey(color: Colors.blue, sno: 3),
              buildkey(color: Colors.yellow, sno: 4),
              buildkey(color: Colors.deepOrange, sno: 5),
              buildkey(color: Colors.purple, sno: 6),
            ],
          ),

        ),
      ),
    );
  }
}