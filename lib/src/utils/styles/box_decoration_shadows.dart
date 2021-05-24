import 'package:flutter/material.dart';

const borderRadius = BorderRadius.all(Radius.circular(20.0));
const boxShadow = [
  BoxShadow(
      color: Color.fromRGBO(210, 211, 215, 1.0),
      offset: Offset(0, 5),
      blurRadius: 10.0)
];
Decoration createboxDecorationWithShadow(
    {BorderRadius borderRadius = borderRadius,
    Color containercolor = Colors.white,
    List<BoxShadow> boxShadows = boxShadow}) {
  return BoxDecoration(
      borderRadius: borderRadius, color: containercolor, boxShadow: boxShadows);
}
