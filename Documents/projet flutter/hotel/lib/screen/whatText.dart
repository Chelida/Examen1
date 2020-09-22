import 'package:flutter/material.dart';

class WhatText extends StatelessWidget {
  final String img;
  final String name;
  final String message;
  final String date;
  WhatText({@required this.img,this.name,this.message,this.date});
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage(img),
                      maxRadius: 30,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(name),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.check,
                              size: 14,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Container(
                              width: 190,
                              child: Text(message,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(date),
                    SizedBox(
                      height: 5,
                    ),
                    CircleAvatar(
                      maxRadius: 12,
                      backgroundColor: Colors.green,
                      child: Text("1"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 88, right: 10),
            child: Divider(
              color: Colors.grey,
            ),
          ),
        ],
      
    );
  }
}
