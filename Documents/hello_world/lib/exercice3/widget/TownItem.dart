import 'package:flutter/material.dart';

class TownItems extends StatelessWidget {
  final String title;
  final String descrip;
  final String img;
  TownItems({@required this.title, this.descrip, this.img});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 160,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.darken)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
          ),
          Text(
            descrip,
            style: TextStyle(
                color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
