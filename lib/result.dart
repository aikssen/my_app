import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function callback;

  Result(this.score, this.callback);

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
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: callback,
            child: Text('Try Again'),
          )
        ],
      ),
    );
  }
}
