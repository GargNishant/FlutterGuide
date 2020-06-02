
import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  final Function passedFunction;
  final String text;
  Button(this.passedFunction, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10,right: 10,bottom: 5),
      child: RaisedButton(onPressed: passedFunction, // When the Button is Pressed, Anonymous f'n will be executed. Inside the Anonymous Function is
        splashColor: Colors.green,// answerQuestion(10). This answerQuestion refers to f'n in main.dart file. Thus, this Widget directly does not know
        color: Colors.greenAccent,// score value, but because it was passed by parent inside, it can execute it
        child: Text(text),
      ),
    );
  }

}