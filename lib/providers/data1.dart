import 'package:flutter/material.dart';

class Channel {
  final String id;
  final String titre;
  final String cover;
  final String descrip;
  final String urlChanel;

  const Channel({
    @required this.id,
    @required this.titre,
    @required this.cover,
    @required this.descrip,
    @required this.urlChanel,
  });
}

class RadioChannel {
  final String id;
  final String cover;
  final String titre;
  final String frequence;
  final String urlRadio;

  const RadioChannel({
    @required this.id,
    @required this.cover,
    @required this.titre,
    @required this.frequence,
    @required this.urlRadio,
  });
}

class RadiosChanel {
  String titre;
  String frequence;
  String cover;
  String urlRadio;

  RadiosChanel(String titre, String frequence, String cover, String urlRadio) {
    this.titre = titre;
    this.frequence = frequence;
    this.cover = cover;
    this.urlRadio = urlRadio;
  }
}

class PaysItem {
  final String id;
  final String nom;

  const PaysItem({this.id, this.nom});
}

const CHANNEL_CATEGORIES = const [
  Channel(
    id: 'c1',
    titre: 'RTI1',
    cover: 'images/tv1.jpg',
    descrip: 'La chaine qui rassemble',
    urlChanel:
        'https://www.enovativecdn.com/rticdn/smil:rti1.smil/playlist.m3u8',
  ),
  Channel(
    id: 'c2',
    titre: 'RTI2',
    cover: 'images/tv2.jpg',
    descrip: 'un autre regard',
    urlChanel:
        'https://www.enovativecdn.com/rticdn/smil:rti2.smil/playlist.m3u8',
  ),
  Channel(
    id: 'c3',
    titre: 'RTI3',
    cover: 'images/rti3.jpg',
    descrip: 'sport & music',
    urlChanel:
        'https://www.enovativecdn.com/rticdn/smil:rti3.smil/playlist.m3u8',
  ),
  Channel(
    id: 'c4',
    titre: 'Emci',
    cover: 'images/em.jpg',
    descrip: 'religion',
    urlChanel:
        "https://emci-fr-hls.akamaized.net/hls/live/2007265/emcifrhls/04.m3u8",
  ),
];

List programData = [
  {
    "id": "1",
    "cover": "images/tempo.jpg",
    "titre": "Tempo",
    "descrip": "divertssement",
  },
  {
    "id": "2",
    "cover": "images/lifeMode.jpg",
    "titre": "Life",
    "descrip": "Mode",
  },
  {
    "id": "3",
    "cover": "images/leflash.jpg",
    "titre": "Le Flash",
    "descrip": "Information",
  },
  {
    "id": "4",
    "cover": "images/veronik.jpg",
    "titre": "la vengeance de veronica",
    "descrip": "Novelas",
  },
  {
    "id": "5",
    "cover": "images/twomin.jpg",
    "titre": "2 minutes pour conmprendre",
    "descrip": "Astuces",
  },
];

const RadioDataList = const [
  RadioChannel(
    id: '1',
    titre: 'VOA Afrique',
    cover: 'images/am.jpg',
    frequence: '94.0',
    urlRadio: 'https://ample-06.radiojar.com/867wmhpgq3quv',
  ),
  RadioChannel(
    id: '2',
    titre: 'NRJ Radio',
    cover: 'images/cheli.jpg',
    frequence: '95.0',
    urlRadio: "http://185.52.127.155/fr/30001/mp3_128.mp3?origine=fluxradios",
  ),
];

const PaysList = const [
  PaysItem(
    id: '1',
    nom: "Cote d'ivoire",
  ),
  PaysItem(
    id: '2',
    nom: "Ghana",
  ),
  PaysItem(
    id: '1',
    nom: "Nigeria",
  ),
];
// List marvelData = [
//   {
//     "id": 1,
//     "cover": "images/tv1.jpg",
//     "titre": "RTI1",
//     "descrip": "La chaine qui rassemble",
//     "urlChanel":
//         " https://www.enovativecdn.com/rticdn/smil:rti1.smil/playlist.m3u8"
//   },
//   {
//     "id": 2,
//     "cover": "images/tv2.jpg",
//     "titre": "RTI2",
//     "descrip": "Un autre regard",
//     "urlChanel":
//         "https://www.enovativecdn.com/rticdn/smil:rti2.smil/playlist.m3u8",
//   },
//   {
//     "id": 3,
//     "cover": "images/rti3.jpg",
//     "titre": "RTI3",
//     "descrip": "Sport & musique",
//     "urlChannel":
//         "https://www.enovativecdn.com/rticdn/smil:rti3.smil/playlist.m3u8",
//   }
// ];








// import 'package:audioplayers/audio_cache.dart';
// import 'package:audioplayers/audio_cache.dart';
// import 'package:audioplayers/audioplayers.dart';
// import 'package:examen/providers/data1.dart';
// import 'package:flutter/material.dart';


// class RadioPage2 extends StatefulWidget {
//   int index;
//   RadioPage2(this.index);
//   @override
//   _RadioPage2State createState() => _RadioPage2State();
// }

// enum PlayerState {
//   playing,
//   paused,
//   stopped,
// }
// enum ActionMusic {
//   play,
//   pause,
//   forward,
//   rewind,
// }

// class _RadioPage2State extends State<RadioPage2> {
//   // List<RadiosFm> RadioDataList = [
//   //   new RadiosFm(
//   //     "NRJ Radio",
//   //     "00.0",
//   //     "images/trace.png",
//   //     "http://185.52.127.155/fr/30001/mp3_128.mp3?origine=fluxradios",
//   //   ),
//   //   new RadiosFm(
//   //     'VOA Afrique',
//   //     '94.0',
//   //     'images/voa.png',
//   //     'https://ample-06.radiojar.com/867wmhpgq3quv',
//   //   ),
//   // ];

//   RadioChannel radioActuelle;
//   Duration _duration = new Duration();
//   Duration _position = new Duration();
//   AudioPlayer advancedPlayer;
//   AudioCache audioCache;
//   PlayerState statut = PlayerState.stopped;
//   int index = 0;

//   @override
//   void initState() {
//     super.initState();
//     index = widget.index;
//     radioActuelle = RadioDataList[index];
//     configAudioPlayer();
//   }

//   IconButton button(IconData icone, double taille, ActionMusic action) {
//     return IconButton(
//         iconSize: taille,
//         color: Colors.white,
//         icon: Icon(icone),
//         onPressed: () {
//           switch (action) {
//             case ActionMusic.play:
//               play();
//               break;
//             case ActionMusic.pause:
//               pause();
//               break;
//             case ActionMusic.forward:
//               forwad();
//               break;
//             case ActionMusic.rewind:
//               rewind();
//               break;

//             default:
//           }
//         });
//   }

//   void configAudioPlayer() {
//     advancedPlayer = new AudioPlayer();
//     audioCache = new AudioCache(fixedPlayer: advancedPlayer);
//     advancedPlayer.durationHandler = (d) => setState(() {
//           _duration = d;
//         });
//     advancedPlayer.positionHandler = (p) => setState(() {
//           _position = p;
//         });

//     advancedPlayer.completionHandler = () {
//       setState(() {});
//     };
//   }

//   Future play() async {
//     await advancedPlayer.play(radioActuelle.urlRadio);
//     setState(() {
//       statut = PlayerState.playing;
//     });
//   }

//   Future pause() async {
//     await advancedPlayer.pause();
//     setState(() {
//       statut = PlayerState.paused;
//     });
//   }

//   void forwad() {
//     if (index == RadioDataList.length - 1) {
//       index = 0;
//     } else {
//       index++;
//     }
//     radioActuelle = RadioDataList[index];
//     advancedPlayer.stop();
//     configAudioPlayer();
//     play();
//   }

//   void rewind() {
//     if (index == 0) {
//       index = RadioDataList.length - 1;
//     } else {
//       index--;
//     }
//     radioActuelle = RadioDataList[index];
//     advancedPlayer.stop();
//     configAudioPlayer();
//     play();
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     advancedPlayer.stop();
//     super.dispose();
//   }

//   double slid = 1;
//   bool couleur = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SafeArea(
//         child: Container(
//           color: Colors.blue[200],
//           child: Column(
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.only(right: 20, top: 10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     Icon(
//                       Icons.menu,
//                       color: Colors.white,
//                       size: 20,
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20),
//               Expanded(
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   decoration: BoxDecoration(
//                     color: Colors.black,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(30),
//                       topRight: Radius.circular(30),
//                     ),
//                   ),
//                   child: Column(
//                     children: <Widget>[
//                       SizedBox(height: 20),
//                       Container(
//                         width: MediaQuery.of(context).size.width / 3,
//                         height: 10,
//                         decoration: BoxDecoration(
//                             color: Colors.grey.withOpacity(0.2),
//                             borderRadius: BorderRadius.circular(30)),
//                       ),
//                       SizedBox(height: 30),
//                       Container(
//                         width: MediaQuery.of(context).size.width / 1.2,
//                         height: 300,
//                         decoration: BoxDecoration(
//                             color: Colors.grey.withOpacity(0.2),
//                             borderRadius: BorderRadius.circular(30),
//                             image: DecorationImage(
//                                 image: AssetImage('images/joi1.png'))),
//                       ),
//                       SizedBox(height: 20),
//                       Text(
//                         radioActuelle.titre,
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 21,
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Text(
//                         radioActuelle.frequence,
//                         style: TextStyle(
//                           color: Colors.white.withOpacity(0.5),
//                           // fontSize: 25,
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Slider(
//                           activeColor: Colors.blue[200],
//                           value: this.slid,
//                           onChanged: (double value) {
//                             setState(() => this.slid = value);
//                           }),
                      
//                       SizedBox(height: 20),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 20),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: <Widget>[
                            
//                             SizedBox(width: 10,),
//                             Row(
                              
//                               children: <Widget>[
//                                 button(
//                                     Icons.fast_rewind, 25, ActionMusic.rewind),
//                                 SizedBox(width: 10),
//                                 button(
//                                     (statut == PlayerState.playing)
//                                         ? Icons.pause
//                                         : Icons.play_arrow,
//                                     40,
//                                     (statut == PlayerState.playing)
//                                         ? ActionMusic.pause
//                                         : ActionMusic.play),
//                                 SizedBox(width: 10),
//                                 button(Icons.fast_forward, 40,
//                                     ActionMusic.forward),
//                               ],
//                             ),
                            
//                           ],
//                         ),
//                       ),

//                        Padding(
//                         padding: const EdgeInsets.all(60),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: <Widget>[
//                             Icon(Icons.shuffle, color: Color.fromRGBO(255, 30, 103, 0.8), size: 20),
//                             Text(
//                               'Lyrics',
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             Icon(Icons.autorenew, color: Colors.grey, size: 20),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
