import 'package:flutter/material.dart';

class Resultat extends StatelessWidget {
  final int resultScore;
  final Function resertHandler;
  Resultat(this.resultScore, this.resertHandler);
  String get resultPhase {
    String resultText;

    if (resultScore <= 5) {
      resultText = 'Ameliore toi!';
    } else if (resultScore <= 18) {
      resultText = 'good';
    } else if (resultScore <= 22) {
      resultText = 'supper';
    } else if (resultScore <= 28) {
      resultText = 'bien jouer';
    } else if (resultScore <= 30) {
      resultText = 'double tes effort';
    } else if (resultScore <= 34) {
      resultText = 'Pas de chance';
    } else if (resultScore <= 37) {
      resultText = 'vraiment bien';
    } else if (resultScore <= 40) {
      resultText = 'vrai bien';
    } else if (resultScore <= 76) {
      resultText = 'Supper';
    } else if (resultScore <= 100) {
      resultText = 'Supper';
    } else {
      resultText = 'Ressaye';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            Text(
              resultPhase,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            FlatButton(
              onPressed: resertHandler,
              textColor: Colors.green,
              child: Text(
                'Restat Quiz',
              ),
            )
          ],
        ),
      ),
    );
  }
}
