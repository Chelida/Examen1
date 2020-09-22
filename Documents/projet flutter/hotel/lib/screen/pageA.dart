import 'package:flutter/material.dart';

class PageA extends StatelessWidget {
  double sild=0.5; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(154, 165, 175, 1),
                      Color.fromRGBO(35, 36, 40, 1),
                    ]),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 26),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                          elevation: 50,
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(41, 44, 54, 1),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                width: 0.6,
                                color: Color.fromRGBO(35, 36, 40, 1),
                              ),
                            ),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          "Playing Now",
                          style: TextStyle(color: Colors.white),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                          elevation: 50,
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(41, 44, 54, 1),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                width: 0.6,
                                color: Color.fromRGBO(35, 36, 40, 1),
                              ),
                            ),
                            child: Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(140)),
                      elevation: 50,
                      child: Container(
                        
                        width: 280,
                        height: 280,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(140),
                          border: Border.all(
                            width: 8,
                            color: Color.fromRGBO(35, 36, 40, 1),
                          ),
                          image: DecorationImage(image: AssetImage("images/play.jpg"),fit: BoxFit.cover)
                        ),
                      ),
                    ),
                  ),
                  Slider(
                    value: this.sild,
                    onChanged: (double value) {
                      setState(() => this.sild = value);
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                      
                        void setState(double Function() param0) {}
}
