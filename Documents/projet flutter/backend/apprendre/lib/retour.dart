import 'package:flutter/material.dart';

class Retour extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  // final String imageUrl;
  Retour(
    this.id,
    this.title,
    this.color,
  );
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/dodo', arguments: {
          'id': id,
          'title': title,
          'color': color,
          // 'imadeUrl': imageUrl,
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 20, right: 10),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          elevation: 10,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4.8,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(4)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2.8,
                  height: MediaQuery.of(context).size.height / 4,
                  decoration: BoxDecoration(
                    color: color,
                    // image: DecorationImage(
                    //     image: AssetImage(imageUrl), fit: BoxFit.cover)
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.7,
                  height: MediaQuery.of(context).size.height / 3.9,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed('/dodo', arguments: {
                                'id': id,
                                'titre': title,
                              });
                            },
                            child: Text(
                              "En savoir plus",
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                          Text(" (103 discussions)")
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
