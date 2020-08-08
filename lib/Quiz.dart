import 'package:flutter/material.dart';

import 'Answers.dart';
import 'Questions.dart';

class Quiz extends StatelessWidget {
  List<Map<String, Object>> question;
  Function answersForQuestions;
  int questionIndex;

  Quiz(
      {@required this.question,
      @required this.answersForQuestions,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Question(question[questionIndex]['questionText']),
        ...(question[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(
              () => answersForQuestions(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
