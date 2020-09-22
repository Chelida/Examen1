import 'package:flutter/material.dart';
import '../provider/dataFilm.dart';

class DetailFilm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments as FilmModel;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        
        
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text(args.titre),
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
      body: SingleChildScrollView(
              child: Container(
             
          child: Column(
            children: <Widget>[
              Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage(args.image),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    bottom: -80,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 4,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage(args.image),
                            fit: BoxFit.cover),
                      ),
                      
                    ),
                  ),
                  Positioned(
                    bottom: -100,
                    right: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.6,
                      height: 80,
                      color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.bookmark_border,
                                color: Colors.grey,
                              ),
                              Text("Watchlist",style: TextStyle(color: Colors.grey,),),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.favorite_border,
                                color: Colors.grey,
                              ),
                              Text("Favrite",style: TextStyle(color: Colors.grey,)),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.wifi_tethering,
                                color: Colors.grey,
                              ),
                              Text("Share",style: TextStyle(color: Colors.grey,)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, right: 270),
                child: Text(
                  "Description",
                  style: TextStyle(fontSize: 16,color: Colors.white),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(
                    top: 10,
                    right: 40,
                  ),
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                          args.description,style: TextStyle(color: Colors.grey[200],)),
                      Text(
                        "Read More",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Cast",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic),
                    ),
                    Text(
                      "Voir plus",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage("images/bl1.jpg"), fit: BoxFit.cover),
                          ),
                        ),
                        Text("Bre Larson",style: TextStyle(color: Colors.grey[300],))
                      ],
                    ),

                     Column(
                      children: <Widget>[
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage("images/bl2.jpg"), fit: BoxFit.cover),
                          ),
                        ),
                        Text("Bre Larson",style: TextStyle(color: Colors.grey[300],))
                      ],
                    ),

                     Column(
                      children: <Widget>[
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage("images/bl3.jpg"), fit: BoxFit.cover),
                          ),
                        ),
                        Text("Bre Larson",style: TextStyle(color: Colors.grey[300],))
                      ],
                    ),

                     Column(
                      children: <Widget>[
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage("images/bl4.jpeg"), fit: BoxFit.cover),
                          ),
                        ),
                        Text("Bre Larson",style: TextStyle(color: Colors.grey[300],))
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 16),
                child: Row(
                  children: <Widget>[
                    Text("Recommendation",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.white, fontStyle: FontStyle.italic),)
                  ],
                ),
              ),
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
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        children: <Widget>[
         
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
