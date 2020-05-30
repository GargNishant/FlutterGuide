import 'package:flutter/material.dart';

void main() => runApp(ApplicationWidget());

class ApplicationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's you favorite color?",
      "What's your favorite animal"
    ];
    return MaterialApp(
        home: Scaffold(
            //Scaffold contains some basic elements of empty page like White background, themes for Text, etc
            appBar: AppBar(
              title: Text("App Bar Text Widget"),
            ),
            body: Column(
              children: <Widget>[
                Text("The Question!"),
                RaisedButton(
                  child: Text("Answer 1"),
                  onPressed: () => print("Anonymous"),
                ),
                RaisedButton(
                  child: Text("Answer 2"),
                  onPressed: () {
                    print("Anonymous 2");
                  },
                ),
                RaisedButton(
                  child: Text("Answer 3"),
                  onPressed: answerQuestion,
                ),
              ],
            )));
  }

  void answerQuestion() {
    print("Answer Chosen!");
  }
}
