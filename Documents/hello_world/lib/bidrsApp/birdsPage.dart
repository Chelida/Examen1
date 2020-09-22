import 'package:flutter/material.dart';

class BirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Color.fromRGBO(255, 171, 0, 1),
          child: Column(
            children: <Widget>[
              SizedBox(height: 100),
              Text(
                "WANT TO KNOW",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                "Who's chirping?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 70),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage("images/bird1.png"), fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 1.45,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.mic,
                      color: Color.fromRGBO(255, 171, 0, 1),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "LET US HEAR IT",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "birdsPage2");
                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 1.45,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "EXPLORE BIRD TALK",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
