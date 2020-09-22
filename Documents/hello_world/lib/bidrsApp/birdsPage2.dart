
import 'package:flutter/material.dart';

import 'birdData.dart';
import 'widget/birdItm.dart';
import 'widget/paysItem.dart';

class BirdPage2 extends StatefulWidget {
  @override
  _BirdPage2State createState() => _BirdPage2State();
}

class _BirdPage2State extends State<BirdPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          width: MediaQuery.of(context).size.width,
          // color: Color.fromRGBO(255, 171, 0, 1),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [
                  0.5,
                  0.5
                ],
                colors: [
                  Color.fromRGBO(255, 171, 0, 1),
                  Colors.white,
                ]),
          ),

          child: Column(
            children: <Widget>[
              Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 171, 0, 1),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(40)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 40),
                      Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Explore bird talk",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.15,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon:
                                  Icon(Icons.search, color: Colors.black),
                              border: InputBorder.none,
                              labelText: "",
                              hintText: "Lets find this happy little bird",
                              hintStyle: TextStyle(
                                  color: Colors.grey.withOpacity(0.5),
                                  fontWeight: FontWeight.bold),
                              contentPadding: EdgeInsets.only(left: 25)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(40)),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        height: 30,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          itemCount: countryData.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, i) {
                            return PaysItem(
                              pays: countryData[i]["nom"],
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "birdspage3");
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.15,
                          height: 270,
                          padding: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            // image: DecorationImage(
                            //   image: AssetImage("images/bird1.png"),
                            //   fit: BoxFit.cover,
                            // ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "BIRD OF THE WEEK",
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 171, 0, 1),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Bullfinch",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "(pyrrhula pyrrhula)",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(255, 171, 0, 1),
                                ),
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "NEW IN CATALOGUE",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 140,
                        margin: EdgeInsets.only(left: 5),
                        padding: EdgeInsets.all(10),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: birdData.length,
                            itemBuilder: (context, i) {
                              return BirdItm(
                                  birdData[i]['nom'],
                                  birdData[i]['description'],
                                  birdData[i]['images']);
                            }),
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
