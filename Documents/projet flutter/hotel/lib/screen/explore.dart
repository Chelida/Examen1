import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Column(
          children: <Widget>[
           
           
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Text("Nos chaines",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.3,
                          height: MediaQuery.of(context).size.height / 2.7,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey, width: 0.5),
                          ),
                          child: Column(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        4.6,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      image: DecorationImage(
                                          image: AssetImage("images/Ma.jpg"),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 60,
                                    right: 140,
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border: Border.all(
                                              width: 0.1, color: Colors.grey)),
                                      child: Icon(
                                        Icons.pause,
                                        size: 21,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text(
                                      "RT1",
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/rt.jpg"),fit: BoxFit.cover)),
                                    ),
                                   
                                      
                                  ],
                                ),
                              ),
                              Text(
                                "RT1 la chaine qui rassemble",
                                style: TextStyle(
                                    color: Colors.black26, fontSize: 15),
                              ),
                           
                            ],
                          ),
                        ),
                      ),
                    ),
                   


                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.3,
                          height: MediaQuery.of(context).size.height / 2.7,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey, width: 0.5),
                          ),
                          child: Column(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        4.6,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      image: DecorationImage(
                                          image: AssetImage("images/sub.jpg"),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                  ),
                                 Positioned(
                                    top: 60,
                                    right: 140,
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border: Border.all(
                                              width: 0.1, color: Colors.grey)),
                                      child: Icon(
                                        Icons.play_arrow,
                                        size: 21,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text(
                                      "RT2",
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold),
                                    ),
                                     Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/R2.jpg"),fit: BoxFit.cover)),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "Abidjan.cote D'ivoire 💸2.0 km t ../cocody",
                                style: TextStyle(
                                    color: Colors.black26, fontSize: 15),
                              ),
                     
                            ],
                          ),
                        ),
                      ),
                    ),



                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.3,
                          height: MediaQuery.of(context).size.height / 2.7,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey, width: 0.5),
                          ),
                          child: Column(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        4.6,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      image: DecorationImage(
                                          image: AssetImage("images/ma1.jpg"),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 60,
                                    right: 140,
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border: Border.all(
                                              width: 0.1, color: Colors.grey)),
                                      child: Icon(
                                        Icons.play_arrow,
                                        size: 21,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text(
                                      "TFI",
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold),
                                    ),
                                     Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/tf.jpg"))),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "Abidjan.cote D'ivoire 💸2.0 km t ../cocody",
                                style: TextStyle(
                                    color: Colors.black26, fontSize: 15),
                              ),
                     
                            ],
                          ),
                        ),
                      ),
                    ),



                    
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.3,
                          height: MediaQuery.of(context).size.height / 2.7,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey, width: 0.5),
                          ),
                          child: Column(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        4.6,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      image: DecorationImage(
                                          image: AssetImage("images/priso.jpg"),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 60,
                                    right: 140,
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border: Border.all(
                                              width: 0.1, color: Colors.grey)),
                                      child: Icon(
                                        Icons.play_arrow,
                                        size: 21,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text(
                                      "TFX",
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold),
                                    ),
                                     Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/A1.jpg"))),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "Paris.france 💸2.0 km t ../cocody",
                                style: TextStyle(
                                    color: Colors.black26, fontSize: 15),
                              ),
                     
                            ],
                          ),
                        ),
                      ),
                    ),


                     
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.3,
                          height: MediaQuery.of(context).size.height / 2.7,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey, width: 0.5),
                          ),
                          child: Column(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        4.6,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      image: DecorationImage(
                                          image: AssetImage("images/sy.jpg"),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 60,
                                    right: 140,
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border: Border.all(
                                              width: 0.1, color: Colors.grey)),
                                      child: Icon(
                                        Icons.play_arrow,
                                        size: 21,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text(
                                      "SYFY",
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold),
                                    ),
                                     Container(
                                      width: 60,
                                      height: 50,
                                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/s.png"),fit: BoxFit.cover)),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "Paris.france 💸2.0 km t ../cocody",
                                style: TextStyle(
                                    color: Colors.black26, fontSize: 15),
                              ),
                     
                            ],
                          ),
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
