import 'package:flutter/material.dart';
import 'package:projet_hotels/exercice3/provider/data.dart';
import 'package:projet_hotels/exercice3/widget/TownItem.dart';

class Two extends StatefulWidget {
  @override
  _TwoState createState() => _TwoState();
}

class _TwoState extends State<Two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "hello, Sydney",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "Find deals",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          image: AssetImage("images/Cover.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 370,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: "Search, city",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Populars places",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Wrap(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      TownItems(
                        title: placeData[0]["titre"],
                        img: placeData[0]["image"],
                        descrip: placeData[0]["descr"],
                      ),
                      TownItems(
                        title: placeData[1]["titre"],
                        img: placeData[1]["image"],
                        descrip: placeData[1]["descr"],
                      ),
                      TownItems(
                        title: placeData[2]["titre"],
                        img: placeData[2]["image"],
                        descrip: placeData[2]["descr"],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Holidays Deals",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            Text("25% off 21 dec",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      TownItems(
                        title: placeData[3]["titre"],
                        img: placeData[3]["image"],
                        descrip: placeData[3]["descr"],
                      ),
                      TownItems(
                        title: placeData[4]["titre"],
                        img: placeData[4]["image"],
                        descrip: placeData[4]["descr"],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
