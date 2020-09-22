import 'package:hotel/screen/page1.dart';
import 'package:hotel/screen/page2.dart';
import 'package:hotel/screen/A.dart';
import 'package:hotel/screen/page4.dart';
import 'package:hotel/screen/page5.dart';
import 'package:hotel/screen/pageA.dart';
import 'package:hotel/screen/playpage2.dart';
import 'package:hotel/screen/PlanPage1.dart';

import './screen/connexion.dart';
import 'package:flutter/material.dart';

import 'screen/welcome.dart';
import 'widget/navFilm.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Babiflix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: Page2(),
      home: PlanPage1(),
      routes: {
        'page1': (context) => Page1(),
        'connexion': (context) => Connexion(),
        // 'home':(context)=>Navfilm(),
        'playpage2': (context) => Playpage2(),
        'page2': (context) => Page2(),
        'page4': (context) => Page4(),
        'page5': (context) => Page5(),
      },
    );
  }
}
