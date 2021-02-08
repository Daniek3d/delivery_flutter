import 'package:flutter/material.dart';

Widget customButton({
  BuildContext context,
  @required onPressed,
  String text = 'Log In',
  size,
  String image = '',
  @required Color colorBackGround,
  @required Color colorText,
}) {
  return Container(
    margin: EdgeInsets.only(top: 20.0),
    width: 350.0,
    height: 45.0,
    child: RaisedButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: colorBackGround,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        image.isNotEmpty
            ? Image(
                image: AssetImage(image),
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
