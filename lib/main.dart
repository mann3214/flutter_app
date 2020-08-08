import 'package:flutter/material.dart';
import 'package:flutterapp/Quiz.dart';
import 'package:flutterapp/Result.dart';

// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _question = const [
    {
      'questionText': 'What is your fav color?',
      'answers': [
        {'text': 'blue', 'score': 10},
        {'text': 'red', 'score': 6},
        {'text': 'green', 'score': 4},
        {'text': 'white', 'score': 1},
      ]
    },
    {
      'questionText': 'What is your fav game?',
      'answers': [
        {'text': 'cricket', 'score': 10},
        {'text': 'football', 'score': 2},
        {'text': 'chess', 'score': 7},
        {'text': 'cards', 'score': 4}
      ]
    }
  ];

  void _answersForQuestions(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _question.length
              ? Quiz(
                  question: _question,
                  answersForQuestions: _answersForQuestions,
                  questionIndex: _questionIndex,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }

  _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }
}
