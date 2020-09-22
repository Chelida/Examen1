import 'package:flutter/material.dart';
import 'package:livecode/result.dart';
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
      'questionText': 'What\'s your favorite sport?',
      'answers': [
        {'text': 'Swime', 'score': 10},
        {'text': 'cours', 'score': 5},
        {'text': 'football', 'score': 3},
        {'text': 'basck', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'Foutou', 'score': 10},
        {'text': 'Placali', 'score': 5},
        {'text': 'foufou', 'score': 3},
        {'text': 'Rice', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite Fruit?',
      'answers': [
        {'text': 'Corosol', 'score': 10},
        {'text': 'Avocat', 'score': 5},
        {'text': 'pomme', 'score': 3},
        {'text': 'mangue', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite musique?',
      'answers': [
        {'text': 'Lefa', 'score': 10},
        {'text': 'Black M', 'score': 5},
        {'text': 'Moula', 'score': 3},
        {'text': 'Josey', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite class?',
      'answers': [
        {'text': 'TD', 'score': 10},
        {'text': 'TC', 'score': 5},
        {'text': 'TA', 'score': 3},
        {'text': 'TE', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite friend?',
      'answers': [
        {'text': 'Octave', 'score': 10},
        {'text': 'Sydney', 'score': 5},
        {'text': 'Pamela', 'score': 3},
        {'text': 'Nado', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite langage?',
      'answers': [
        {'text': 'Frensh', 'score': 10},
        {'text': 'Anglish', 'score': 5},
        {'text': 'Allemand', 'score': 3},
        {'text': 'Chinoi', 'score': 1},
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
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
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
            title: Text('Mon Journal'),
            backgroundColor: Colors.green.withOpacity(0.3),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Resultat(_totalScore, _restQuiz)),
    );
  }
}
