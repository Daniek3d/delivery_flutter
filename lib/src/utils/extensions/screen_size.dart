import 'package:flutter/material.dart';

double screenWidth;
double screenHeigth;

extension ScreenSize on double {
  double getScreenWidth({BuildContext context, double multiplier = null}) {
    var width = MediaQuery.of(context).size.width;
    if (multiplier != null) {
      width *= multiplier;
    }
    return width;
  }

  double getScreenHeight({BuildContext context, double multiplier = null}) {
    var height = MediaQuery.of(context).size.height;
    if (multiplier != null) {
      height *= multiplier;
    }
    return height;
  }
}
