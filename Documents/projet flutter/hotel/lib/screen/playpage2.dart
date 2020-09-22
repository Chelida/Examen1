import 'package:flutter/material.dart';

class Playpage2 extends StatefulWidget {
  @override
  _Playpage2State createState() => _Playpage2State();
}

class _Playpage2State extends State<Playpage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(129, 136, 152, 1),
                    Color.fromRGBO(35, 36, 40, 1),
                  ]),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 20,
                right: 20,
                bottom: 30,
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    "EVOL' FUTURE",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, 'page5');
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(43, 46, 53, 1),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 12,
                                  offset: Offset(8, 6),
                                ),
                                BoxShadow(
                                  color: Colors.white12,
                                  blurRadius: 12,
                                  offset: Offset(-8, -6),
                                )
                              ],
                              border: Border.all(
                                  color: Color.fromRGBO(40, 43, 48, 1),
                                  width: 1),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 12,
                            ),
                          ),
                        ),
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black38,
                                blurRadius: 10,
                                offset: Offset(8, 6),
                              ),
                              BoxShadow(
                                color: Colors.white12,
                                blurRadius: 10,
                                offset: Offset(-8, -6),
                              )
                            ],
                            border: Border.all(
                              color: Colors.black38,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(150),
                            color: Color(0xff262626),
                            image: DecorationImage(
                                image: AssetImage("images/play.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'page4');
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 10,
                                  offset: Offset(8, 6),
                                ),
                                BoxShadow(
                                  color: Colors.white12,
                                  blurRadius: 10,
                                  offset: Offset(-8, -6),
                                )
                              ],
                              borderRadius: BorderRadius.circular(30),
                              color: Color.fromRGBO(43, 46, 53, 1),
                            ),
                            child: Icon(Icons.more_horiz, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Aiint'tnNo Time",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Future",
                          style: TextStyle(
                            color: Colors.white24,
                          ),
                        ),
                      ],
                    ),
                    trailing: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(43, 46, 53, 1),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 12,
                            offset: Offset(8, 6),
                          ),
                          BoxShadow(
                            color: Colors.white12,
                            blurRadius: 12,
                            offset: Offset(-8, -6),
                          )
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.play_arrow, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ListTile(
                    leading: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Aiint'tnNo Time",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Future",
                          style: TextStyle(
                            color: Colors.white24,
                          ),
                        ),
                      ],
                    ),
                    trailing: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(43, 46, 53, 1),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 12,
                            offset: Offset(8, 6),
                          ),
                          BoxShadow(
                            color: Colors.white12,
                            blurRadius: 12,
                            offset: Offset(-8, -6),
                          )
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.play_arrow, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15, top: 5),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'page2');
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 30,
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 0.4, color: Colors.grey),
                            color: Color.fromRGBO(23, 23, 23, 1),
                          ),
                          height: 70,
                          child: ListTile(
                            leading: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Aiint'tnNo Time",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Future",
                                  style: TextStyle(
                                    color: Colors.white24,
                                  ),
                                ),
                              ],
                            ),
                            trailing: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromRGBO(218, 55, 20, 1),
                                      Color.fromRGBO(239, 80, 16, 1),
                                    ]),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Icon(Icons.pause, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Aiint'tnNo Time",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Future",
                          style: TextStyle(
                            color: Colors.white24,
                          ),
                        ),
                      ],
                    ),
                    trailing: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(43, 46, 53, 1),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 12,
                            offset: Offset(8, 6),
                          ),
                          BoxShadow(
                            color: Colors.white12,
                            blurRadius: 12,
                            offset: Offset(-8, -6),
                          )
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.play_arrow, color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Aiint'tnNo Time",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Future",
                          style: TextStyle(
                            color: Colors.white24,
                          ),
                        ),
                      ],
                    ),
                    trailing: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(43, 46, 53, 1),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 12,
                            offset: Offset(8, 6),
                          ),
                          BoxShadow(
                            color: Colors.white12,
                            blurRadius: 12,
                            offset: Offset(-8, -6),
                          )
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.play_arrow, color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Aiint'tnNo Time",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Future",
                          style: TextStyle(
                            color: Colors.white24,
                          ),
                        ),
                      ],
                    ),
                    trailing: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(43, 46, 53, 1),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 12,
                            offset: Offset(8, 6),
                          ),
                          BoxShadow(
                            color: Colors.white12,
                            blurRadius: 12,
                            offset: Offset(-8, -6),
                          )
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.play_arrow, color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Aiint'tnNo Time",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Future",
                          style: TextStyle(
                            color: Colors.white24,
                          ),
                        ),
                      ],
                    ),
                    trailing: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(43, 46, 53, 1),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 12,
                            offset: Offset(8, 6),
                          ),
                          BoxShadow(
                            color: Colors.white12,
                            blurRadius: 12,
                            offset: Offset(-8, -6),
                          )
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.play_arrow, color: Colors.white ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
