import 'package:flutter/material.dart';

class Bloc1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 0.5, color: Colors.blue),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          "11 - 15 dec",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 13, color: Colors.blue),
        ),
      ),
    );
  }
}
