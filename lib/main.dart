import 'package:flutter/material.dart';
import 'package:my_app/result.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 20},
        {'text': 'Rabbit', 'score': 30},
        {'text': 'Turtle', 'score': 40}
      ],
    },
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 20},
        {'text': 'White', 'score': 30},
        {'text': 'Black', 'score': 40},
      ],
    },
    {
      'questionText': 'Who\'s your favorite hero?',
      'answers': [
        {'text': 'Spiderman', 'score': 10},
        {'text': 'Captain America', 'score': 20},
        {'text': 'Thor', 'score': 30},
        {'text': 'Iron man', 'score': 40},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                callback: _answerQuestion,
                index: _questionIndex,
              )
            : Result(_totalScore),
      ),
    );
  }
}
