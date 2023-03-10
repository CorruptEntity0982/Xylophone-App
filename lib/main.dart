import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(
    const Xylophone(),
  );
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
              Expanded(
                child: TextButton(
                  onPressed: () {
                    final player = AssetsAudioPlayer();
                    player.open(
                      Audio('assets/note1.wav'),
                    );
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                  ),
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    final player = AssetsAudioPlayer();
                    player.open(
                      Audio('assets/note2.wav'),
                    );
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.orange),
                  ),
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    final player = AssetsAudioPlayer();
                    player.open(
                      Audio('assets/note3.wav'),
                    );
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.yellow),
                  ),
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    final player = AssetsAudioPlayer();
                    player.open(
                      Audio('assets/note4.wav'),
                    );
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green),
                  ),
                  child: const Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    final player = AssetsAudioPlayer();
                    player.open(
                      Audio('assets/note5.wav'),
                    );
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.cyan),
                  ),
                  child: const Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    final player = AssetsAudioPlayer();
                    player.open(
                      Audio('assets/note6.wav'),
                    );
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  ),
                  child: const Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    final player = AssetsAudioPlayer();
                    player.open(
                      Audio('assets/note7.wav'),
                    );
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.purple),
                  ),
                  child: const Text(""),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
