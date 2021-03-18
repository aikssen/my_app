import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText; 
  final Function selectHandler;

  Answer(this.answerText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(answerText),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.red[700]),
        ),
      ),
    );
  }
}
