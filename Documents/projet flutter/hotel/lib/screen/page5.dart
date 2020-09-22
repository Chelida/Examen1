import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  bool couleur = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(40, 43, 48, 1),
                  Color.fromRGBO(35, 36, 40, 1)
                ]),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: ListTile(
                  leading: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Favorites",
                        style: TextStyle(
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Filip Legierski",
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
                      color: Color.fromRGBO(28, 31, 34, 1),
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
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          couleur= ! couleur;
                        });
                      },
                      child: Icon(
                        Icons.favorite,
                        color: couleur ? Colors.red : Colors.white,
                        size: 13,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50, bottom: 20),
                width: MediaQuery.of(context).size.width,
                height: 2,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(28, 31, 34, 1),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 12,
                      offset: Offset(8, 6),
                    ),
                    BoxShadow(
                      color: Colors.white30,
                      blurRadius: 12,
                      offset: Offset(-8, -6),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(43, 46, 53, 1),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 12,
                          offset: Offset(8, 6),
                        ),
                        BoxShadow(
                          color: Colors.white10,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "2",
                      style: TextStyle(color: Colors.white60),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "The Box",
                        style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Roddy Rich",
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
                          color: Colors.white10,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.play_arrow, color: Colors.white24),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(43, 46, 53, 1),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 12,
                          offset: Offset(8, 6),
                        ),
                        BoxShadow(
                          color: Colors.white10,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "3",
                      style: TextStyle(color: Colors.white60),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Yummy",
                        style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Justin Bieber",
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
                          color: Colors.white10,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.play_arrow, color: Colors.white24),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(43, 46, 53, 1),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 12,
                          offset: Offset(8, 6),
                        ),
                        BoxShadow(
                          color: Colors.white10,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "4",
                      style: TextStyle(color: Colors.white60),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Life is good",
                        style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Future-Drake",
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
                          color: Colors.white10,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.play_arrow, color: Colors.white24),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(43, 46, 53, 1),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 12,
                          offset: Offset(8, 6),
                        ),
                        BoxShadow(
                          color: Colors.white10,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "5",
                      style: TextStyle(color: Colors.white60),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Roxanne",
                        style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Arizona Zervas",
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
                          color: Colors.white10,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.play_arrow, color: Colors.white24),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(43, 46, 53, 1),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 12,
                          offset: Offset(8, 6),
                        ),
                        BoxShadow(
                          color: Colors.white10,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "6",
                      style: TextStyle(color: Colors.white60),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Falling",
                        style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Trevor Daniel",
                        style: TextStyle(
                          color: Colors.white54,
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
                          color: Colors.white10,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.play_arrow, color: Colors.white24),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(43, 46, 53, 1),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 12,
                          offset: Offset(8, 6),
                        ),
                        BoxShadow(
                          color: Colors.white10,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "7",
                      style: TextStyle(color: Colors.white60),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Blinding Lights",
                        style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Tones and I",
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
                          color: Colors.white10,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.play_arrow, color: Colors.white24),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(43, 46, 53, 1),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 12,
                          offset: Offset(8, 6),
                        ),
                        BoxShadow(
                          color: Colors.white10,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "8",
                      style: TextStyle(color: Colors.white60),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Dont' Start Now",
                        style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Dua Lipa",
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
                          color: Colors.white10,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.play_arrow, color: Colors.white24),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(43, 46, 53, 1),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 12,
                          offset: Offset(8, 6),
                        ),
                        BoxShadow(
                          color: Colors.white10,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "9",
                      style: TextStyle(color: Colors.white60),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Memories",
                        style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Tones and I",
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
                          color: Colors.white10,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.play_arrow, color: Colors.white24),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(43, 46, 53, 1),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 12,
                          offset: Offset(8, 6),
                        ),
                        BoxShadow(
                          color: Colors.white10,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.white60),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Dance Monkey",
                        style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Tones and I",
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
                          color: Colors.white10,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.play_arrow, color: Colors.white24),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(43, 46, 53, 1),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 12,
                          offset: Offset(8, 6),
                        ),
                        BoxShadow(
                          color: Colors.white10,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.white60),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Dance Monkey",
                        style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Tones and I",
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
                          color: Colors.white10,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.play_arrow, color: Colors.white24),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment.center,
        height: 60,
        width: MediaQuery.of(context).size.width / 1.1,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(218, 55, 20, 1),
                  Color.fromRGBO(239, 80, 16, 1),
                ]),
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          "SHUFFLE",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
