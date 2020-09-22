import 'package:flutter/material.dart';
import '../provider/dataFilm.dart';

class Film extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
          child: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              InkWell(
                onTap:(){
                   Navigator.pushNamed(context, 'page1');
                },
                child: categorieFilm(context, "Series", serie)),
              categorieFilm(context, "Novelas", novelas),
              categorieFilm(context, "Action", action),
              categorieFilm(context, "Fiction", fiction),
              categorieFilm(context, "Comedie", comedie),
              categorieFilm(context, "Horreur", horreur),
              
            ],
          ),
        ),
      ),
    );
  }

  Widget categorieFilm(
      BuildContext context, String titre, List<FilmModel> list) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                titre,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "Voir plus",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 5.2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (context, i) {
                return Container(
                  margin: EdgeInsets.only(top: 10, right: 12),
                  width: MediaQuery.of(context).size.width / 3.4,
                  height: MediaQuery.of(context).size.height / 5.2,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                        image: AssetImage(list[i].image), fit: BoxFit.cover),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
