
import 'package:flutter/material.dart';

import '../portraiView.dart';

class FilmItem extends StatelessWidget {
  final String id;
  final String titre;
  final String descrip;
  final String cover;
  final String urlChanel;
  FilmItem({
    @required this.id,
    @required this.titre,
    @required this.descrip,
    @required this.cover,
    @required this.urlChanel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 150,
      
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PortraiView(id, urlChanel, cover, titre, descrip)));
            },
            child: Container(
              height: 130,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage(cover),
                  )),
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  titre,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  descrip,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
