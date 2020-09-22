import 'package:flutter/material.dart';


class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  double sild = 0.5;
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
                      Color.fromRGBO(129, 136, 152, 1),
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
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'playpage2');
                          },
                          child: Card(
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
                                boxShadow: <BoxShadow>[
                                
                                  BoxShadow(
                                  color: Colors.black,blurRadius: 12,offset: Offset(8, 6),
                                ),
                                
                                  BoxShadow(
                                  color: Colors.white12,blurRadius: 12,offset: Offset(-8, -6),
                                )]
                              ),
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
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
                              boxShadow: <BoxShadow>[
                                
                                  BoxShadow(
                                  color: Colors.black,blurRadius: 12,offset: Offset(8, 6),
                                ),
                                
                                  BoxShadow(
                                  color: Colors.white12,blurRadius: 12,offset: Offset(-8, -6),
                                )]
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
                    padding: const EdgeInsets.only(top: 20),
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
                            boxShadow: <BoxShadow>[
                                
                                  BoxShadow(
                                  color: Colors.black,blurRadius: 12,offset: Offset(8, 6),
                                ),
                                
                                  BoxShadow(
                                  color: Colors.white30
                                  ,blurRadius: 12,offset: Offset(-8, -6),
                                )],
                            image: DecorationImage(
                                image: AssetImage("images/play.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),

       
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      "Low Life",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Future ft. The weeknd",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Slider(
                      inactiveColor: Color.fromRGBO(41, 44, 54, 1),
                      activeColor: Color.fromRGBO(191, 135, 22, 1),
                      value: this.sild,
                      onChanged: (double value) {
                        setState(() => this.sild = value);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Card(
                          
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                          elevation: 50,
                          child: Container(
                            
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(41, 44, 54, 1),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                width: 1,
                                color: Color.fromRGBO(35, 36, 40, 1),
                              ),
                              boxShadow: <BoxShadow>[
                                  
                                    BoxShadow(
                                    color: Colors.black,blurRadius: 12,offset: Offset(8, 6),
                                  ),
                                  
                                    BoxShadow(
                                    color: Colors.white12,blurRadius: 12,offset: Offset(-8, -6),
                                  )]
                            ),
                            child: Icon(
                              Icons.skip_next,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                          elevation: 50,
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromRGBO(218, 55, 20, 1),
                                    Color.fromRGBO(239, 80, 16, 1),
                                  ]),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                width: 1,
                                color: Color.fromRGBO(35, 36, 40, 1),
                              ),
                              boxShadow: <BoxShadow>[
                                  
                                    BoxShadow(
                                    color: Colors.black,blurRadius: 12,offset: Offset(8, 6),
                                  ),
                                  
                                    BoxShadow(
                                    color: Colors.white12,blurRadius: 12,offset: Offset(-8, -6),
                                  )]
                            ),
                            child: Icon(
                              Icons.pause,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                          elevation: 50,
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(41, 44, 54, 1),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                width: 1,
                                color: Color.fromRGBO(35, 36, 40, 1),
                              ),
                              boxShadow: <BoxShadow>[
                                  
                                    BoxShadow(
                                    color: Colors.black,blurRadius: 12,offset: Offset(8, 6),
                                  ),
                                  
                                    BoxShadow(
                                    color: Colors.white12,blurRadius: 12,offset: Offset(-8, -6),
                                  )]
                            ),
                            child: Icon(
                              Icons.skip_previous,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
