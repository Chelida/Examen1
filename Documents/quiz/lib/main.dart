import 'package:flutter/material.dart';
import 'package:quiz/resultat.dart';
import './quiz.dart';
import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _restQuiz() {
    setState(() {});
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < _questions.length) {
      print('We have more question !');
    } else {
      print('Non more question');
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    // var dummy = ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];

    // questions = [];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My Frist App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Resultat(_totalScore)),
    );
  }
}
