import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class BirdPage3 extends StatefulWidget {
  @override
  _BirdPage3State createState() => _BirdPage3State();
}

enum PlayerState {
  playing,
  paused,
  stopped,
}
enum ActionMusic {
  play,
  pause,
}

class _BirdPage3State extends State<BirdPage3> {
  Duration _duration = new Duration();
  Duration _position = new Duration();
  AudioPlayer advancedPlayer;
  AudioCache audioCache;
  PlayerState statut = PlayerState.stopped;

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  void initPlayer() {
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);

    advancedPlayer.durationHandler = (d) => setState(() {
          _duration = d;
        });

    advancedPlayer.positionHandler = (p) => setState(() {
          _position = p;
        });
  }

  IconButton button(IconData icone, double taille, ActionMusic action) {
    return IconButton(
        iconSize: taille,
        color: Colors.black,
        icon: Icon(icone),
        onPressed: () {
          switch (action) {
            case ActionMusic.play:
              play();
              break;
            case ActionMusic.pause:
              pause();
              break;

            default:
          }
        });
  }

  Widget slider() {
    return Slider(
        activeColor: Color.fromRGBO(255, 171, 0, 1),
        inactiveColor: Colors.black,
        value: _position.inSeconds.toDouble(),
        min: 0.0,
        max: _duration.inSeconds.toDouble(),
        onChanged: (double value) {
          setState(() {
            seekToSecond(value.toInt());
            value = value;
          });
        });
  }

  Future play() async {
    await audioCache.play('birds.mp3');
    setState(() {
      statut = PlayerState.playing;
    });
  }

  Future pause() async {
    await advancedPlayer.pause();
    setState(() {
      statut = PlayerState.paused;
    });
  }

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);

    advancedPlayer.seek(newDuration);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text("YOU'RE HEARING",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("Eurasian blue tit",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("(Cyanistes caeruleus)",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 171, 0, 1),
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                SizedBox(height: 40),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage("images/bird1.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width / 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            "OCCURRENCE",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Subartic Europe",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Western Asian",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width / 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            "DIET",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Insectes spiders",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "seeds",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(255, 171, 0, 1),
                      ),
                      child: button(
                          (statut == PlayerState.playing)
                              ? Icons.pause
                              : Icons.play_arrow,
                          30,
                          (statut == PlayerState.playing)
                              ? ActionMusic.pause
                              : ActionMusic.play),
                    ),
                    Expanded(child: slider()),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "OVERVIEW",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'bottomNavigator');
                        },
                        child: Text(
                            "Small passerine bird in the tit family, paridae. it is easily recognisable by blue and yelloow plumage and size."),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
