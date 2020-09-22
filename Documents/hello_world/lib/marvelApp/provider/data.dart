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
