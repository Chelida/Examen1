
import 'package:flutter/material.dart';


import 'package:hotel/screen/explore.dart';
import 'package:hotel/screen/trips.dart';
import '../screen/film.dart';

import 'drawerFilm.dart';

class Navfilm extends StatefulWidget {

  @override
  _NavfilmState createState() => _NavfilmState();
}

class _NavfilmState extends State<Navfilm> {
  final GlobalKey<ScaffoldState>scaffoldKey = new GlobalKey<ScaffoldState>();
  int pageIndex = 0;
  void onTapped(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  List viewList = [
    Film(),
    Explore(),
    Trips()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
       key: scaffoldKey,
      appBar: AppBar(
        
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              scaffoldKey.currentState.openDrawer();
            },
                      child: CircleAvatar(
              
              backgroundImage: AssetImage("images/fiction3.jpg"),
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.black,
        title: Image.asset("images/b.jpeg",height: 20,),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 26,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: drawerChat(context),

      
      bottomNavigationBar: BubbleBottomBar(
        backgroundColor: Colors.black,

        currentIndex: pageIndex,
        onTap: onTapped,
        
        
       
        
      
        items: <BubbleBottomBarItem>[
          
          BubbleBottomBarItem(
            backgroundColor: Colors.blueAccent,
            title: Text("Film"),
            activeIcon: Icon(
              Icons.movie,
              color: Colors.white,
            ),
            icon: Icon(Icons.movie,color: Colors.white,),
          ),

            BubbleBottomBarItem(
            backgroundColor: Colors.blueAccent,
            title: Text("TV"),
            activeIcon: Icon(
              FontAwesomeIcons.tv,
              color: Colors.white,size: 20,
            ),
            icon: Icon(FontAwesomeIcons.tv,color: Colors.white,size: 20,),
          ),


          BubbleBottomBarItem(
            backgroundColor: Colors.blue,
            title: Text("Radio"),
             activeIcon: Icon(
              Icons.radio,
              color: Colors.white,
            ),
            icon: Icon(Icons.radio,color: Colors.white,),
          ),
        ],
        opacity: .2,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
        elevation: 0,
      ),
      body: viewList.elementAt(pageIndex),
    );
  }
}
