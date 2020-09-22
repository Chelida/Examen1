import 'package:flutter/material.dart';
import 'package:projet_hotels/exercice3/widget/bloc.dart';

class Three extends StatefulWidget {
  @override
  _ThreeState createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              SizedBox(height: 50),
              Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 0.5, color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.arrow_back_ios, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "New York",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 0.5, color: Colors.blue),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.settings_input_composite,
                            color: Colors.blue),
                      ),
                      Positioned(
                        right: -8,
                        top: -10,
                        child: Container(
                          alignment: Alignment.center,
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text("3",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Bloc1(),
                  SizedBox(width: 10),
                  Bloc1(),
                  SizedBox(width: 10),
                  Bloc1(),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
