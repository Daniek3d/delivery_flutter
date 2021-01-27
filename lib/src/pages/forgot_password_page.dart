import 'package:delivery_app/src/widgets/back_button.dart';
import 'package:delivery_app/src/widgets/custom_button.dart';
import 'package:delivery_app/src/widgets/title_text.dart';
import 'package:flutter/material.dart';

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
                  onPressed: () {
                    _showAlert(context);
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

void _showAlert(BuildContext context) {
  showDialog(
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
                image: AssetImage('assets/lock.png'),
                width: 130,
                height: 130,
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                child: Text(
                  'Your password has been reset',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                child: Text(
                  "You'll shortly receive an email with a code to setup a new password",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0),
                ),
              ),
              customButton(
                  context: context,
                  text: 'Done',
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  })
            ],
          ),
        ),
      );
    },
  );
}
