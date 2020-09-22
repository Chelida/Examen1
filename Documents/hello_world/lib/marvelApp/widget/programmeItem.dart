import 'package:flutter/material.dart';

class Program extends StatelessWidget {
  final String id;
  final String titre;
  final String descrip;
  final String cover;
  Program({
    @required this.id,
    @required this.titre,
    @required this.descrip,
    @required this.cover,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 150,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) =>
              //             PortraiView(id, urlChanel, cover, titre, descrip)));
            },
            child: Container(
              height: 150,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage(cover),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    titre,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    descrip,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
