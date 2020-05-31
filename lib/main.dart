import 'package:flutter/material.dart';

void main() => runApp(ApplicationWidget());

class ApplicationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ApplicationWidgetState();
  }
}

class _ApplicationWidgetState extends State<ApplicationWidget>{
  var questIndex = 0;
  var questions = ["What's you favorite color?", "What's your favorite animal?"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("App Bar Text Widget"),),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(questions[questIndex]),
                RaisedButton(child: Text("Answer 1"), onPressed: answerQuestion,),
                RaisedButton(child: Text("Answer 2"), onPressed: answerQuestion,),
                RaisedButton(child: Text("Answer 3"), onPressed: answerQuestion,),
              ],
            )));
  }

  void answerQuestion() {
    setState((){
      questIndex += 1;
      questIndex = questIndex%2;
    });
    print(questIndex);
  }
}
