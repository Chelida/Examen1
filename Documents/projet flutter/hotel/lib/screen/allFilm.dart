import 'package:flutter/material.dart';
import '../provider/dataFilm.dart';

class AllFilm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments as List<FilmModel>;

    return Scaffold(
      backgroundColor: Colors.black,
       appBar: AppBar(
        
        
        elevation: 0,
        backgroundColor: Colors.black,
        title: Image.asset("images/babiFlix.png",height: 20,),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 26,
              ),
              onPressed: () {}),
        ],
      ),
     
        body: Padding(
          padding: const EdgeInsets.only(left: 8,right: 8),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 205,
                childAspectRatio: 0.7,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemCount: args.length,
              itemBuilder: (context, i) {
                return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'detailFilm', arguments: args[i]);
                    },
                    child: Container(
                      // margin: EdgeInsets.only(top: 10, right: 12),
                      // width: MediaQuery.of(context).size.width / 3,
                      // height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                        image: DecorationImage(
                            image: AssetImage(args[i].image), fit: BoxFit.cover),
                      ),
                    ));
              }),
        ));
  }

  Widget categorieFilm(
      BuildContext context, String titre, List<FilmModel> list) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'film2');
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: (context, i) {
                  return Container(
                    margin: EdgeInsets.only(top: 10, right: 12),
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 3,
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
          ),
        ],
      ),
    );
  }
}
