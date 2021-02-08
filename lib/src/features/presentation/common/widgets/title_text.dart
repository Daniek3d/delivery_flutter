import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;

  TitleText({
    this.text = '',
    this.color = Colors.black,
    this.fontSize = 30.0,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text,
          style: TextStyle(
            color: color,
            fontWeight: fontWeight,
            fontSize: fontSize,
          )),
    );
  }
}

Widget titleText(
    {String text = '',
    Color color = Colors.black,
    double fontSize = 30.0,
    FontWeight fontWeight = FontWeight.bold}) {
  return Text(text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ));
}
