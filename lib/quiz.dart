import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final Function callback;
  final num index;

  Quiz({
    @required this.questions,
    @required this.callback,
    @required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(questions[index]['questionText']),
      ...(questions[index]['answers'] as List).map((answer) {
        return Answer(answer['text'], () => callback(answer['score']));
      }).toList(),
    ]);
  }
}
