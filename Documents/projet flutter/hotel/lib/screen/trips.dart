import 'package:flutter/material.dart';

class Trips extends StatelessWidget {
  List<String> maList = [
    "t.png",
    "sub.jpg",
    "ma17.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
          child: Column(
            children: <Widget>[
              
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 7,
                      decoration: BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage("images/vib.jpg"),fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50,left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Vibe Radion",
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                          SizedBox(height: 8,),
                          Container(
                            width: 180,
                            height: 30,
                              child: Text(
                            "à titre provisoire pour cal définitif venant remplacer le définitif venant remplacer le",
                            style: TextStyle(color: Colors.blue),
                          )),

                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(100)),
                      child: Icon(Icons.pause,color: Colors.white,),
                    ),
                  ],
                ),
              ),
             


              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 7,
                      decoration: BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage("images/fre.jpg"),fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50,left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Fréquence 2",
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                          SizedBox(height: 8,),
                          Container(
                            width: 180,
                            height: 30,
                              child: Text(
                            "à titre provisoire pour cal définitif venant remplacer le définitif venant remplacer le",
                            style: TextStyle(color: Colors.blue),
                          )),

                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(100)),
                      child: Icon(Icons.play_arrow,color: Colors.white,),
                    ),
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 7,
                      decoration: BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage("images/ya.jpg"),fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50,left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Yakoi",
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                          SizedBox(height: 8,),
                          Container(
                            width: 180,
                            height: 30,
                              child: Text(
                            "à titre provisoire pour cal définitif venant remplacer le définitif venant remplacer le",
                            style: TextStyle(color: Colors.blue),
                          )),

                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(100)),
                      child: Icon(Icons.play_arrow,color: Colors.white,),
                    ),
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 7,
                      decoration: BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage("images/tr.jpg"),fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50,left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Trace Tv",
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                          SizedBox(height: 8,),
                          Container(
                            width: 180,
                            height: 30,
                              child: Text(
                            "à titre provisoire pour cal définitif venant remplacer le définitif venant remplacer le",
                            style: TextStyle(color: Colors.blue),
                          )),

                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(100)),
                      child: Icon(Icons.play_arrow,color: Colors.white,),
                    ),
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 7,
                      decoration: BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage("images/gos.jpg"),fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50,left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Gospel tv",
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                          SizedBox(height: 8,),
                          Container(
                            width: 180,
                            height: 30,
                              child: Text(
                            "à titre provisoire pour cal définitif venant remplacer le définitif venant remplacer le",
                            style: TextStyle(color: Colors.blue),
                          )),

                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(100)),
                      child: Icon(Icons.play_arrow,color: Colors.white,),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
