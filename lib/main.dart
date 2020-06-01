
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
  var _questions = [
    {
      "quest": "What is you favourite Animal?",
      "possibles": ["Dog", "Cat", "Birds", "Ostrich"]
    },
    {
      "quest": "What is you favourite Color?",
      "possibles": ["Blue", "Yellow", "Black"]
    },
    {
      "quest": "What is you favourite City?",
      "possibles": ["X", "Y", "Z", "Banglore", "Hyderbad"]
    },
    {
      "quest": "What is you favourite Job?",
      "possibles": ["Android Development", "Data Analyst", "SDE", "Mobile"]
    },
    {
      "quest": "What is you favourite Game?",
      "possibles": ["Souls", "Witcher", "GTA", "Read Dead Redemption"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("App Bar"),
          ),
          body: _questIndex < _questions.length
              ? QuizWidget(questions: _questions, questIndex: _questIndex, answerQuestion: _answerQuestion)
              : CenterTextWidget("Questions Completed!"),
        )
    );
  }

  void _answerQuestion() {
    setState(() => _questIndex += 1);
  }
}
