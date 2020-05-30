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
            appBar: AppBar(title: Text("App Bar Text Widget"),), //Default App bar with a title
            body: Column(
              children: <Widget>[
                Text("The Question!"),
                RaisedButton(child: Text("Answer 1"), onPressed: answerQuestion,), //We are passing the name of the method, making like a pointer. This way
                RaisedButton(child: Text("Answer 2"), onPressed: answerQuestion,), //onPressed is not expecting the value of function, which is void.
                RaisedButton(child: Text("Answer 3"), onPressed: answerQuestion,), //Instead it will execute the function when clicked. Lecture 31
              ],
            )
        )
    );
  }

  void answerQuestion() {
    print("Answer Chosen!");
  }
}
