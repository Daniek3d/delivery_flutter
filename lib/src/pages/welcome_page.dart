import 'dart:ui';
import 'package:delivery_app/src/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'package:delivery_app/src/pages/login_page.dart';

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
              /* Container(
                width: 350.0,
                height: 45.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Theme.of(context).accentColor,
                  child: Text('Log In'),
                ),
              ), */
              customButton(
                  context: context,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  }),
              Container(
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 30.0),
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Theme.of(context).buttonColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/f_logo_RGB-White_58.png'),
                        width: 30.0,
                        height: 30.0,
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: Text('Connect with faccebook')),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
