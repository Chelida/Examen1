import 'package:flutter/material.dart';

class Players extends StatefulWidget {
  @override
  _PlayersState createState() => _PlayersState();
}

class _PlayersState extends State<Players> {
  double _slider1Val = 0.5;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
              child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 140,
              color: Color.fromRGBO(255, 62, 124, 0.8),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Colors.white,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Text(
                      'Song',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  trailing: Icon(
                    Icons.more_horiz,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 90),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage('images/joi1.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Snowmine',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Let me in',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),

                    SizedBox(height: 20,),
                  Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: <Widget>[
                            Text(
                              '0.46',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            
                            Expanded(
                                child: Slider(
                              value: this._slider1Val,
                              onChanged: (double value) {
                                setState(() {
                                  this._slider1Val = value;
                                });
                              },
                            )),
                            Text(
                              '02:39',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.skip_previous,
                              color: Colors.black,
                              size: 40,
                            ),
                            Icon(
                              Icons.play_arrow,
                              size: 80,
                              color: Color.fromRGBO(255, 62, 124, 0.8),
                            ),
                            Icon(
                              Icons.skip_next,
                              color: Colors.black,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(Icons.shuffle, color: Color.fromRGBO(255, 30, 103, 0.8), size: 20),
                            Text(
                              'Lyrics',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.autorenew, color: Colors.grey, size: 20),
                          ],
                        ),
                      )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
