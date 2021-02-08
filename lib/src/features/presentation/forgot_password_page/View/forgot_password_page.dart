import 'package:flutter/material.dart';

import 'package:delivery_app/src/features/presentation/common/widgets/back_button.dart';
import 'package:delivery_app/src/features/presentation/common/widgets/custom_button.dart';
import 'package:delivery_app/src/features/presentation/common/widgets/show_alert.dart';
import 'package:delivery_app/src/features/presentation/common/widgets/title_text.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(context, Colors.black);
          },
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              titleText('Forgot password', Theme.of(context).primaryColor),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Please enter your email addres. You will recevie a lnk to create a new password via email',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0),
                ),
              ),
              _emailInput(),
              customButton(
                  context: context,
                  text: 'Send',
                  colorText: Colors.white,
                  colorBackGround: Theme.of(context).primaryColor,
                  onPressed: () {
                    showAlert(
                        context: context,
                        title: 'Your password has been reset',
                        body:
                            "You'll shortly receive an email with a code to setup a new password",
                        image: 'assets/lock.png',
                        navigateTo: 'login',
                        textButton: 'Done');

                    print('send');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 20.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 148, 1.2),
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Your email',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          )),
    ),
  );
}
