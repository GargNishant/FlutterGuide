import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StatelessText extends StatelessWidget {
  final String text;

  StatelessText(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      child: Text(text,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
