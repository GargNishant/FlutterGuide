import 'package:flutter/material.dart';
import 'package:flutterguide/button.dart';
import 'package:flutterguide/statelessText.dart';

class QuizWidget extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questIndex;
  final Function answerQuestion;

  QuizWidget(
      {@required this.questions,
      @required this.questIndex,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        StatelessText(questions[questIndex]['quest']),
        ...(questions[questIndex]["possibles"] as List<Map<String, Object>>)
            .map((answer) {
          return Button(() {
            //Adding a new Anonymous F'n with void return type and no Parameter. Inside this, our parameterized fn is passed with a value of score. This way we can pass the arguments
            answerQuestion(answer['score']);
          }, answer["text"]);
        }).toList(),
      ],
    );
  }
}
