import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // color: Color.fromRGBO(255, 171, 0, 1),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [
                0.5,
                0.5
              ],
              colors: [
                Color.fromRGBO(255, 171, 0, 1),
                Colors.white,
              ]),
        ),
      ),
    );
  }
}
