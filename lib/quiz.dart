import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final int quetsionIndex;
  final List<Map<String, Object>> questions;
  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.quetsionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[quetsionIndex]['question'],
        ),
        ...(questions[quetsionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(()=>answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
