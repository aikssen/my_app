import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  Result(this.score);

  String get resultPhrase {
    String copy;
    if (score < 50) {
      copy = 'Passed';
    } else if (score < 100) {
      copy = 'Almost passed';
    } else {
      copy = 'Failed';
    }
    return copy;
  }

  @override
  Widget build(BuildContext context) {
    print(score);
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
