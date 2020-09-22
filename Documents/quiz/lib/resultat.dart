import 'package:flutter/material.dart';

class Resultat extends StatelessWidget {
  final int resultScore;
  Resultat(this.resultScore);
  String get resultPhase {
    String resultText;

    if (resultScore <= 8) {
      resultText = 'You are awesome and innocente !';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange';
    } else {
      resultText = 'You are so bad !';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            'You did it!',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FloatingActionButton(onPressed:() {}, child: Text('Restat Quiz!'),)
        ],
      ),
    );
  }
}
