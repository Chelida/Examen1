import 'package:flutter/material.dart';

class Nexxt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(42, 28, 105, 1),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Container(
              height: 60,
              width: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Text(
                "Be",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(42, 28, 105, 1),
                ),
              ),
            ),
            Text(
              "connected",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage("images/car.jpg"), fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.brightness_1,
                    size: 10, color: Color.fromRGBO(182, 30, 131, 1)),
                SizedBox(width: 5),
                Icon(Icons.brightness_1, size: 10, color: Colors.white),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 100,
              child: Text(
                "Get updates oh your vehicle condition",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, 'homC3');
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "Start",
                  style: TextStyle(
                      color: Color.fromRGBO(182, 30, 131, 1),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              child: Text(
                "Skip and direct to login",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
