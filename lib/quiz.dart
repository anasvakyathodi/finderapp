import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final questions;
  final questionIndex;
  final Function questionAnswered;
  Quiz({this.questions, this.questionIndex, this.questionAnswered});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => questionAnswered(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
