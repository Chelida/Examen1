import 'package:flutter/material.dart';

class BirdItm extends StatelessWidget {
  final String nom;
  final String descrip;
  final String image;
  BirdItm(
    this.nom,
    this.descrip,
    this.image,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.only(right: 20),
      width: MediaQuery.of(context).size.width / 1.7,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2,
          color: Colors.grey,
        ),
      ),
      child: Row(
        children: <Widget>[
          Container(
            height: 90,
            width: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(image),
            )),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                nom,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: 120,
                child: Text(
                  descrip,
                  style: TextStyle(
                    color: Color.fromRGBO(255, 171, 0, 1),
                    fontWeight: FontWeight.bold,
                  ),overflow: TextOverflow.visible,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
