import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'what is your favourite color',
      'answers': [
        {'text': 'black', 'score': 30},
        {'text': 'red', 'score': 12},
        {'text': 'white', 'score': 2}
      ]
    },
    {
      'question': 'what is your favourite animal',
      'answers': [
        {'text': 'rabbit', 'score': 3},
        {'text': 'dog', 'score': 30},
        {'text': 'cat', 'score': 20}
      ]
    },
    {
      'question': 'what is your favourite actor',
      'answers': [
        {'text': 'mohanlal', 'score': 13},
        {'text': 'mammooty', 'score': 12},
        {'text': 'dq', 'score': 6}
      ]
    }
  ];
  var questionIndex = 0;
   var _totalScore=0;
  void _answerQuestion(int score) {
       _totalScore+=score;
       print(_totalScore);
      
    if (questionIndex < _questions.length) {
      setState(() {
        questionIndex = questionIndex + 1;
      });

      print(questionIndex);
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
             title: Text('Chat'),
            backgroundColor: Colors.green,
          ),
          body: questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  quetsionIndex: questionIndex,
                )
              : Result(_totalScore)),
    );
  }
}
