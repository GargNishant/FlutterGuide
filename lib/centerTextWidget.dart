import 'package:flutter/material.dart';

class CenterTextWidget extends StatelessWidget {
  final int score;
  final Function resetQuiz;
  String get resultPhrase {
    var resultText = "You did it!";
    if (score <= 8)
      resultText = "You are awesome";
    else if (score <= 12) resultText = "Pretty likeable";
    return resultText;
  }

  CenterTextWidget(this.score, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text("Reset Quiz"),
            onPressed: resetQuiz,
          ),
        ],
      ),
    );
  }
}
