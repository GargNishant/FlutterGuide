
import 'package:flutter/material.dart';
import 'package:flutterguide/button.dart';
import 'package:flutterguide/statelessText.dart';

class QuizWidget extends StatelessWidget{
  final List<Map<String,Object>> questions;
  final int questIndex;
  final Function answerQuestion;

  QuizWidget({@required this.questions, @required this.questIndex, @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        StatelessText(questions[questIndex]['quest']),
        ...(questions[questIndex]["possibles"] as List).map((answer) {
          return Button(answerQuestion, answer);
        }).toList(),
      ],
    );
  }

}