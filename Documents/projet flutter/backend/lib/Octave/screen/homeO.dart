import 'package:flutter/material.dart';

class HomeO extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Text("👋"),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Good Morning",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            Text(
                              "Nicholas",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.short_text),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 340,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 0.7, color: Colors.white)),
              child: TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search product you wish..",
                  prefixIcon: Icon(Icons.search),
                  fillColor: Colors.grey,
                  hintStyle: TextStyle(color: Colors.black54),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "Daily Deals",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.brightness_1,
                      size: 8,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.brightness_1,
                      size: 8,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.brightness_1,
                      size: 8,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.white12,
                              image: DecorationImage(
                                  image: AssetImage(
                                    "images/sum.jpg",
                                  ),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Positioned(
                          top: 20,
                          child: Container(
                            alignment: Alignment.center,
                            width: 40,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(252, 58, 92, 1),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5))),
                            child: Text(
                              "-15%",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -10,
                          child: Container(
                            alignment: Alignment.center,
                            width: 200,
                            height: 140,
                            decoration: BoxDecoration(color: Colors.white60),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      width: 120,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(215, 232, 248, 1)
                                                  .withOpacity(0.7),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.shopping_cart,
                                            color:
                                                Color.fromRGBO(10, 91, 206, 1),
                                          ),
                                          Text(
                                            "Add to cart",
                                            style: TextStyle(
                                                color: Colors.blue[900],
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(255, 226, 230, 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Icon(
                                        Icons.favorite_border,
                                        color: Color.fromRGBO(235, 110, 140, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "OnePlus 7T Sim 8GB RAM",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "120 GB LTE Frosted Silver",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 30,
                                      height: 50,
                                    ),
                                    Text(
                                      "\$955.00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "\$1.010.00",
                                      style: TextStyle(fontSize: 11),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.white12,
                              image: DecorationImage(
                                  image: AssetImage(
                                    "images/sum.jpg",
                                  ),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Positioned(
                          top: 20,
                          child: Container(
                            alignment: Alignment.center,
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(146, 201, 71, 1),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5))),
                            child: Text(
                              "Top",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -10,
                          child: Container(
                            alignment: Alignment.center,
                            width: 200,
                            height: 140,
                            decoration: BoxDecoration(color: Colors.white60),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      width: 120,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(215, 232, 248, 1)
                                                  .withOpacity(0.7),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.shopping_cart,
                                            color:
                                                Color.fromRGBO(10, 91, 206, 1),
                                          ),
                                          Text(
                                            "Add to cart",
                                            style: TextStyle(
                                                color: Colors.blue[900],
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(255, 226, 230, 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Icon(
                                        Icons.favorite_border,
                                        color: Color.fromRGBO(235, 110, 140, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "OnePlus 7T Sim 8GB RAM",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "120 GB LTE Frosted Silver",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 30,
                                      height: 50,
                                    ),
                                    Text(
                                      "\$955.00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "\$1.010.00",
                                      style: TextStyle(fontSize: 11),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "Popular Categories",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.brightness_1,
                      size: 8,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.brightness_1,
                      size: 8,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.brightness_1,
                      size: 8,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 25),
              height: 90,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 210,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 210,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
