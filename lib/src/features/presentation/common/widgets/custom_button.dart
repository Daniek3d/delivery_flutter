import 'package:flutter/material.dart';

Widget customButton(
    {BuildContext context, @required onPressed, String text = 'Log In'}) {
  return Container(
    margin: EdgeInsets.only(top: 20.0),
    width: 350.0,
    height: 45.0,
    child: RaisedButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Theme.of(context).accentColor,
      child: Text(
        text,
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    ),
  );
}
