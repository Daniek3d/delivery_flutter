import 'package:flutter/material.dart';

import 'custom_button.dart';

Future showAlert(
    {BuildContext context,
    String title,
    String body,
    String textButton,
    String navigateTo,
    String image,
    Function onPresed}) async {
  await showDialog(
    barrierDismissible: true,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        content: Container(
          height: 350,
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: 130,
                height: 130,
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                child: Text(
                  title,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                child: Text(
                  body,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0),
                ),
              ),
              customButton(
                  context: context,
                  text: textButton,
                  onPressed: onPresed != null
                      ? () {
                          Navigator.pushNamed(context, navigateTo);
                        }
                      : onPresed)
            ],
          ),
        ),
      );
    },
  );
}
