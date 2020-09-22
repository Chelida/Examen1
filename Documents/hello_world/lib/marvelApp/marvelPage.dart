
import 'package:flutter/material.dart';

import 'provider/data.dart';
import 'widget/filmItem.dart';

class MarvelPage extends StatefulWidget {
  @override
  _MarvelPageState createState() => _MarvelPageState();
}

class _MarvelPageState extends State<MarvelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100),
                      ),
                      image: DecorationImage(
                        image: AssetImage("images/tvA.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    // child: Column(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: <Widget>[
                    //     SizedBox(height: 100),
                    //     Text(
                    //       "WATCH BEFORE EVERYONE",
                    //       style: TextStyle(
                    //           color: Colors.white, fontWeight: FontWeight.bold),
                    //     ),
                    //     Container(
                    //       height: 100,
                    //       width: 200,
                    //       child: Text(
                    //         "Daredevil: Season 2",
                    //         style: TextStyle(
                    //             fontSize: 30,
                    //             color: Colors.white,
                    //             fontWeight: FontWeight.bold),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ),
                  Positioned(
                    child: Container(
                      height: 60,
                      width: 60,
                      margin: EdgeInsets.only(top: 310, left: 80),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                      child: InkWell(
                    child: Container(
                      margin: EdgeInsets.only(top: 320, left: 160),
                      height: 52,
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            topLeft: Radius.circular(30),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("En Direct ",
                              style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              )),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ))
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 70, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'A voir aussi',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          childAspectRatio: 3 / 4.6,
                          maxCrossAxisExtent: 200,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20),
                      itemCount: CHANNEL_CATEGORIES.length,
                      itemBuilder: (context, i) {
                        return FilmItem(
                            id: CHANNEL_CATEGORIES[i].id,
                            titre: CHANNEL_CATEGORIES[i].titre,
                            descrip: CHANNEL_CATEGORIES[i].descrip,
                            cover: CHANNEL_CATEGORIES[i].cover,
                            urlChanel: CHANNEL_CATEGORIES[i].urlChanel);
                      })

                  //  ListView.builder(
                  //     scrollDirection: Axis.vertical,
                  //     itemCount: CHANNEL_CATEGORIES.length,
                  //     itemBuilder: (context, i) {
                  //       return FilmItem(
                  //           id: CHANNEL_CATEGORIES[i].id,
                  //           titre: CHANNEL_CATEGORIES[i].titre,
                  //           descrip: CHANNEL_CATEGORIES[i].descrip,
                  //           cover: CHANNEL_CATEGORIES[i].cover,
                  //           urlChanel: CHANNEL_CATEGORIES[i].urlChanel);
                  //     }),
                  ),
              SizedBox(height: 20),
              // Padding(
              //   padding: const EdgeInsets.only(left: 70, right: 10),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: <Widget>[
              //       Text(
              //         'News from Marvel Studio',
              //         style: TextStyle(
              //             color: Colors.black,
              //             fontSize: 20,
              //             fontWeight: FontWeight.bold),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
