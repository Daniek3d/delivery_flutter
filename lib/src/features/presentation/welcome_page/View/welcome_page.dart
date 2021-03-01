import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:delivery_app/src/features/presentation/common/widgets/widget_files.dart';
import 'package:delivery_app/src/features/presentation/login_page/View/login_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://source.unsplash.com/IX0Y2V2erUs'))),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: Text(
                  'DELIVERED AST FOOD TO YOUR DOOR',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 45.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                child: Text(
                  'Set exact location to find the rigth restaurants near you.',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 17.0,
                  ),
                ),
              ),
              customButton(
                  context: context,
                  text: 'Log in',
                  colorBackGround: Theme.of(context).accentColor,
                  colorText: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  }),
              customButton(
                  onPressed: () => {},
                  context: context,
                  text: 'Connect with faccebook!!!!',
                  image: 'assets/f_logo_RGB-White_58.png',
                  colorBackGround: Theme.of(context).buttonColor,
                  colorText: Colors.white)
            ],
          ),
        ],
      ),
    );
  }
}
