import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'provider/data.dart';

class RadioPage2 extends StatefulWidget {
  int index;
  RadioPage2(this.index);
  @override
  _RadioPage2State createState() => _RadioPage2State();
}

enum PlayerState {
  playing,
  paused,
  stopped,
}
enum ActionMusic {
  play,
  pause,
  forward,
  rewind,
}

class _RadioPage2State extends State<RadioPage2> {
  // List<RadiosFm> RadioDataList = [
  //   new RadiosFm(
  //     "NRJ Radio",
  //     "00.0",
  //     "images/trace.png",
  //     "http://185.52.127.155/fr/30001/mp3_128.mp3?origine=fluxradios",
  //   ),
  //   new RadiosFm(
  //     'VOA Afrique',
  //     '94.0',
  //     'images/voa.png',
  //     'https://ample-06.radiojar.com/867wmhpgq3quv',
  //   ),
  // ];

  RadioChannel radioActuelle;
  Duration _duration = new Duration();
  Duration _position = new Duration();
  AudioPlayer advancedPlayer;
  AudioCache audioCache;
  PlayerState statut = PlayerState.stopped;
  int index = 0;

  @override
  void initState() {
    super.initState();
    index = widget.index;
    radioActuelle = RadioDataList[index];
    configAudioPlayer();
  }

  IconButton button(IconData icone, double taille, ActionMusic action) {
    return IconButton(
        iconSize: taille,
        color: Colors.white,
        icon: Icon(icone),
        onPressed: () {
          switch (action) {
            case ActionMusic.play:
              play();
              break;
            case ActionMusic.pause:
              pause();
              break;
            case ActionMusic.forward:
              forwad();
              break;
            case ActionMusic.rewind:
              rewind();
              break;

            default:
          }
        });
  }

  void configAudioPlayer() {
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
    advancedPlayer.durationHandler = (d) => setState(() {
          _duration = d;
        });
    advancedPlayer.positionHandler = (p) => setState(() {
          _position = p;
        });

    advancedPlayer.completionHandler = () {
      setState(() {});
    };
  }

  Future play() async {
    await advancedPlayer.play(radioActuelle.urlRadio);
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

  void forwad() {
    if (index == RadioDataList.length - 1) {
      index = 0;
    } else {
      index++;
    }
    radioActuelle = RadioDataList[index];
    advancedPlayer.stop();
    configAudioPlayer();
    play();
  }

  void rewind() {
    if (index == 0) {
      index = RadioDataList.length - 1;
    } else {
      index--;
    }
    radioActuelle = RadioDataList[index];
    advancedPlayer.stop();
    configAudioPlayer();
    play();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    advancedPlayer.stop();
    super.dispose();
  }

  double slid = 1;
  bool couleur = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          color: Colors.blue[200],
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: 300,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage(radioActuelle.cover))),
                      ),
                      SizedBox(height: 20),
                      Text(
                        radioActuelle.titre,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        radioActuelle.frequence,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          // fontSize: 25,
                        ),
                      ),
                      SizedBox(height: 10),
                      Slider(
                          activeColor: Colors.blue[200],
                          value: this.slid,
                          onChanged: (double value) {
                            setState(() => this.slid = value);
                          }),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.brightness_1,
                                size: 12, color: Colors.blue[200]),
                            SizedBox(
                              width: 20,
                            ),
                            Text("LIVE", style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              Icons.volume_up,
                              color: Colors.white.withOpacity(0.5),
                            ),
                            SizedBox(width: 10,),
                            Row(
                              
                              children: <Widget>[
                                button(
                                    Icons.fast_rewind, 25, ActionMusic.rewind),
                                SizedBox(width: 10),
                                button(
                                    (statut == PlayerState.playing)
                                        ? Icons.pause
                                        : Icons.play_arrow,
                                    25,
                                    (statut == PlayerState.playing)
                                        ? ActionMusic.pause
                                        : ActionMusic.play),
                                SizedBox(width: 10),
                                button(Icons.fast_forward, 25,
                                    ActionMusic.forward),
                              ],
                            ),
                            Container(
                                child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(
                                    (couleur)
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: Colors.white.withOpacity(0.5),
                                    size: 20,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      couleur = !couleur;
                                    });
                                  },
                                ),
                                Icon(Icons.network_check,
                                    color: Colors.white.withOpacity(0.5),
                                    size: 20),
                              ],
                            ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
