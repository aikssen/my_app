import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}


class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite animal?',
      'Wat\'s your favorite color?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion, 
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () => print('option'), 
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: (){
                print('option 3');
              }, 
              child: Text('Answer 3'),
            ),
          ]
        ),
      ),
    );
  }
}
