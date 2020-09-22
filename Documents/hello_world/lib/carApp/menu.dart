import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({key, this.user}) : super(key: key);
  final UserCredential user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text(
              "Welcome Back !",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
