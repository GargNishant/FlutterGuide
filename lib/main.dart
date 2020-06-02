import 'package:flutter/material.dart';
import 'package:flutterguide/centerTextWidget.dart';
import 'package:flutterguide/quiz.dart';

void main() => runApp(ApplicationWidget());

class ApplicationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ApplicationWidgetState();
  }
}

class _ApplicationWidgetState extends State<ApplicationWidget> {
  var _questIndex = 0;
  var _totalScore = 0;
  var _questions = [
    {
      "quest": "What is you favourite Animal?",
      "possibles": [
        {"text": "Dog", "score": 1},
        {"text": "Cat", "score": 2},
        {"text": "Birds", "score": 3},
        {"text": "Ostrich", "score": 4}
      ]
    },
    {
      "quest": "What is you favourite Color?",
      "possibles": [
        {"text": "Blue", "score": 1},
        {"text": "Yellow", "score": 2},
        {"text": "Black", "score": 3}
      ]
    },
    {
      "quest": "What is you favourite City?",
      "possibles": [
        {"text": "X", "score": 1},
        {"text": "Y", "score": 2},
        {"text": "Z", "score": 3},
        {"text": "Banglore", "score": 4},
        {"text": "Hyderbad", "score": 5}
      ]
    },
    {
      "quest": "What is you favourite Job?",
      "possibles": [
        {"text": "Android Development", "score": 1},
        {"text": "Data Analyst", "score": 2},
        {"text": "SDE", "score": 3},
        {"text": "Mobile", "score": 4}
      ]
    },
    {
      "quest": "What is you favourite Game?",
      "possibles": [
        {"text": "Souls", "score": 1},
        {"text": "Witcher", "score": 2},
        {"text": "GTA", "score": 3},
        {"text": "Read Dead Redemption", "score": 4}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("App Bar"),
            ),
            body: _questIndex < _questions.length
                ? QuizWidget(
                    questions: _questions,
                    questIndex: _questIndex,
                    answerQuestion: _answerQuestion)
                : CenterTextWidget(_totalScore,_resetQuiz)
        )
    );
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() => _questIndex += 1);
  }

  void _resetQuiz(){
    setState(() {
      _questIndex = 0;
      _totalScore = 0;
    });
  }
}
