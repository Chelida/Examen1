
import 'package:flutter/material.dart';

import '../radioPage2.dart';

class RadioItem extends StatelessWidget {
  String id;
  String cover;
  String titre;
  String frequence;
  String urlRadio;
  int index;
  RadioItem({
    @required this.id,
    @required this.cover,
    @required this.titre,
    @required this.frequence,
    @required this.urlRadio,
    @required this.index,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RadioPage2(index),
            ));
      },
      child: Container(
        height: 90,
        width: MediaQuery.of(context).size.width / 1.3,
        decoration: BoxDecoration(
            border: Border.all(width: 0.4, color: Colors.white.withOpacity(0.2)),
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.all(10),
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
                      image: AssetImage(cover), fit: BoxFit.cover),
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
                      Text(
                        titre,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        frequence,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Icon(Icons.favorite_border,
                  color: Colors.white.withOpacity(0.2), size: 25),
              Icon(Icons.more_vert,
                  color: Colors.white.withOpacity(0.2), size: 25)
            ],
          ),
        ),
      ),
    );
  }
}
