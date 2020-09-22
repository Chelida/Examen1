import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  double sild = 0.5;
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
                  Color.fromRGBO(35, 36, 40, 1),
                  
                  
                  
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
                        "Playlists",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "16 created playlist",
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
                          color: Colors.white24,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.add, color: Colors.white24),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
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
                          color: Colors.white12,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                ),
              ),
               Container(
                              padding: EdgeInsets.only(top: 10),
                              margin: EdgeInsets.only(left: 10,right: 10,top: 30),
                              width: MediaQuery.of(context).size.width/1.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                
                                color: Color.fromRGBO(23, 23, 23, 1),
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
                              ),
                              height: MediaQuery.of(context).size.height/5,
                              
                              child: 
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                       Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
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
                                      color: Color.fromRGBO(28, 31, 34, 1),
                                    
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Icon(Icons.favorite, color: Colors.red,size: 14,),
                                  ),
                                  SizedBox(height: 20,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "Favorites",
                                            style: TextStyle(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "356",
                                            style: TextStyle(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),

                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "Filip Legierski",
                                            style: TextStyle(
                                              color: Colors.white24,
                                            ),
                                          ),
                                          Text(
                                            "Songs",
                                            style: TextStyle(
                                              color: Colors.white24,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              
                              
                            ),


                            Container(
                margin: EdgeInsets.only(top: 30),
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
                          color: Colors.white12,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                ),
              ),

             Padding(
               padding: const EdgeInsets.only(right: 200,top: 10),
               child: Text(
                          "Reccommended",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
             ),
            




                          
               Container(
                 
                 height: MediaQuery.of(context).size.height/3.6,
                 child: ListView(
                   scrollDirection: Axis.horizontal,
                   children: <Widget>[
                     Container(
                                    padding: EdgeInsets.only(top: 12),
                                    margin: EdgeInsets.only(left: 10,right: 10,top: 30),
                                    width: MediaQuery.of(context).size.width/1.6,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      
                                      color: Color.fromRGBO(23, 23, 23, 1),
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
                                    ),
                                    height: MediaQuery.of(context).size.height/4.5,
                                    
                                    child: 
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                             Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
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
                                            color: Color.fromRGBO(28, 31, 34, 1),
                                          
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          child: Icon(Icons.star, color: Colors.white30,size: 19,),
                                        ),
                                        SizedBox(height: 70,),
                                           
                                                Text(
                                                  "Top 50",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  "Ariel Two",
                                                  style: TextStyle(
                                                    color: Colors.white24,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),

                                          ],
                                        ),
                                      ),
                                    
                                    
                                  ),



                    Container(
                                    padding: EdgeInsets.only(top: 12),
                                    margin: EdgeInsets.only(left: 10,right: 10,top: 30),
                                    width: MediaQuery.of(context).size.width/1.6,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      
                                      color: Color.fromRGBO(23, 23, 23, 1),
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
                                    ),
                                    height: MediaQuery.of(context).size.height/4.5,
                                    
                                    child: 
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                             Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
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
                                            color: Color.fromRGBO(28, 31, 34, 1),
                                          
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          child: Icon(Icons.star, color: Colors.white30,size: 19,),
                                        ),
                                        SizedBox(height: 70,),
                                           
                                                Text(
                                                  "Unplugger",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  "Dawo Zbj",
                                                  style: TextStyle(
                                                    color: Colors.white24,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),

                                          ],
                                        ),
                                      ),
                                    
                                    
                                  ),
                              
                   ],
                 ),
               ),

                  Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Slider(
                        inactiveColor: Color.fromRGBO(0, 0, 0, 1),
                        activeColor: Color.fromRGBO(191, 135, 22, 1),
                        value: this.sild,
                        onChanged: (double value) {
                          setState(() => this.sild = value);
                        },
                      ),
                    ),


                                  Container(
                margin: EdgeInsets.only(top: 5),
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
                          color: Colors.white12,
                          blurRadius: 12,
                          offset: Offset(-8, -6),
                        )
                      ],
                ),
              ),
                    Container(
                      alignment: Alignment.center,
                      height: 65,
                      decoration: BoxDecoration(color: Colors.black),
                      child: ListTile(
                        leading: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Lose It",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Flume ' Vic Mensa",
                          style: TextStyle(
                            color: Colors.white24,
                          ),
                        ),
                      ],
                  ),
                  

                  title:   Padding(
                      padding: const EdgeInsets.only(left: 50,top: 11),
                      child: Row(
                          
                          children: <Widget>[
                             Container(
                                
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(41, 44, 54, 1),
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                    width: 0.1,
                                    color: Color.fromRGBO(35, 36, 40, 1),
                                  ),
                                
                                ),
                                child: Icon(
                                  Icons.skip_next,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 6,),
                            
                             Container(
                                width: 50,
                                height: 50,
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
                                    width: 0.1,
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
                            SizedBox(width: 6,),
                           
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(41, 44, 54, 1),
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                    width: 0.1,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                 
                                ),
                                child: Icon(
                                  Icons.skip_previous,
                                  color: Colors.white,
                                ),
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
    );
  }
}
