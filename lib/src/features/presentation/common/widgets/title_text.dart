import 'package:flutter/cupertino.dart';

Widget titleText(String text, Color color, [double fontSize = 30.0]) {
  return Text(text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ));
}
