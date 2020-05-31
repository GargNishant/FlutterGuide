
import 'package:flutter/material.dart';

class StatelessText extends StatelessWidget{
  final String text;

  StatelessText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}