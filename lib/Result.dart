import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int totalScore;
  Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String resultText = 'hello';

  String get getResult {
    if (totalScore <= 10) {
      resultText = 'you are good person';
    } else {
      resultText = 'You are bad person';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            getResult,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text('Reset quiz!'),
            onPressed: resetQuiz,
            textColor: Colors.blue,
          )
        ],
      ),
      width: double.infinity,
      alignment: Alignment.center,
    );
  }
}
