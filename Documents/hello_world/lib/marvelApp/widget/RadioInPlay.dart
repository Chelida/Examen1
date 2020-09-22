import 'package:flutter/material.dart';

class RadioInPlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
      ),
      margin: EdgeInsets.all(5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage("images/trace.png"), fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.brightness_1,
                          color: Colors.blueAccent,
                          size: 10,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'LIVE',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'titre',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'frequence',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Icon(Icons.play_arrow, color: Colors.white, size: 25),
            Icon(Icons.fast_forward,
                color: Colors.white.withOpacity(0.2), size: 25),
          ],
        ),
      ),
    );
  }
}
