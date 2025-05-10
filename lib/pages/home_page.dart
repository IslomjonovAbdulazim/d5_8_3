import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioPlayer player = AudioPlayer();
  int speed = 1;
  double volume = 0.5;

  @override
  void initState() {
    player.setAsset("assets/happy_nation.mp3");
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void play() async {
    player.play();
  }

  void pause() async {}

  void changeSpeed() async {}

  void stop() async {}

  void changeVolume() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 70,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(
                    color: Colors.red,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Text(
                        "Music #1",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Spacer(),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          play();
                        },
                        child: Icon(CupertinoIcons.play),
                      ),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          stop();
                        },
                        child: Icon(CupertinoIcons.stop),
                      ),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          changeSpeed();
                        },
                        child: Text("${speed == 1 ? 2 : 1}X"),
                      ),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          changeVolume();
                        },
                        child: Icon(CupertinoIcons.volume_down),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
