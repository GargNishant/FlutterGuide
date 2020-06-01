import 'package:flutter/material.dart';

class CenterTextWidget extends StatelessWidget {
  final String text;

  CenterTextWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(text));
  }
}
