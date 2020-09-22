

import 'package:flutter/material.dart';

import 'bookpage.dart';
import 'marvelPage.dart';
import 'raidoPage1.dart';


class BottomNavigator extends StatefulWidget {
  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int pageIndex = 0;
  List viewList = [
    MarvelPage(),
    RadioPage1(),
    Bookpage(),
  ];
  void onTapped(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewList.elementAt(pageIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        currentIndex: pageIndex,
        onTap: onTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text("home"),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text("radio"),
            icon: Icon(Icons.radio),
          ),
          BottomNavigationBarItem(
            title: Text("tv"),
            icon: Icon(
              Icons.live_tv,
              color: Colors.grey,
            ),
          ),
          // BottomNavigationBarItem(
          //   title: Text(""),
          //   icon: Icon(
          //     Icons.person_outline,
          //     color: Colors.grey,
          //   ),
          // ),
        ],
      ),
    );
  }
}
