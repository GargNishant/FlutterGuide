import 'package:flutter/material.dart';


import 'package:flutterguide/statelessText.dart';

void main() => runApp(ApplicationWidget());

class ApplicationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ApplicationWidgetState();
  }
}

class _ApplicationWidgetState extends State<ApplicationWidget>{
  var _questIndex = 0;
  var _questions = ["What's you favorite color?", "What's your favorite animal?"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("App Bar Text Widget"),),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                StatelessText(_questions[_questIndex]),
                RaisedButton(child: Text("Answer 1"), onPressed: _answerQuestion,),
                RaisedButton(child: Text("Answer 2"), onPressed: _answerQuestion,),
                RaisedButton(child: Text("Answer 3"), onPressed: _answerQuestion,),
              ],
            )));
  }

  void _answerQuestion() {
    setState((){
      _questIndex += 1;
      _questIndex = _questIndex%2;
    });
    print(_questIndex);
  }
}
