import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(
    const Xylophone(),
  );
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playkey(int number) {
    final player = AssetsAudioPlayer();
    player.open(
      Audio('assets/note$number.wav'),
    );
  }

  Expanded buildkey({required Color color, required int number}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playkey(number);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(color),
        ),
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: const BottomAppBar(
          color: Colors.black,
        ),
        appBar: AppBar(
          title: const Text('Xylophone App'),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.red, number: 1),
              buildkey(color: Colors.orange, number: 2),
              buildkey(color: Colors.yellow, number: 3),
              buildkey(color: Colors.green, number: 4),
              buildkey(color: Colors.cyan, number: 5),
              buildkey(color: Colors.blue, number: 6),
              buildkey(color: Colors.purple, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
