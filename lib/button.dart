
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
      child: RaisedButton(onPressed: passedFunction,
        color: Colors.greenAccent,
        child: Text(text),
      ),
    );
  }

}