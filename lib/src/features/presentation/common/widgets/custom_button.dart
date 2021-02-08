import 'package:flutter/material.dart';

Widget customButton(
    {BuildContext context,
    @required onPressed,
    String text = '',
    size,
    String image = '',
    ImageProvider<Object> icon,
    @required Color colorBackGround,
    @required Color colorText,
    double width = 350.0,
    double height = 45,
    double radius = 20.0}) {
  return Container(
    margin: EdgeInsets.only(top: radius),
    width: width,
    height: height,
    child: RaisedButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: colorBackGround,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        (image.isNotEmpty || icon != null)
            ? Image(
                image: icon != null ? icon : AssetImage(image),
                width: 30.0,
                height: 30.0,
              )
            : Container(),
        Container(
          margin: EdgeInsets.only(left: 10.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: colorText,
            ),
          ),
        ),
      ]),
    ),
  );
}
