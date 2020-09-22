import 'package:flutter/material.dart';

class One extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("images/seminyak.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 20,
            left: 30,
            right: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "Are you ready?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    width: 250,
                    height: 50,
                    child: Text(
                      "Find your hotel easily and travel anywhere you want with us",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "start");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 55,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Color(0xff192DA1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        "Let's start",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
