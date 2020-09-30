import'package:flutter/material.dart';
import './answer.dart';
import './Question.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>>questions;
  final Function answerQuestion;

  Quiz(
      { @required this.questions, @required this.answerQuestion, @required this.questionIndex})



  ;build(BuildContext Context){
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}