import 'package:delivery_app/src/pages/forgot_password_page.dart';
import 'package:flutter/cupertino.dart';

import 'package:delivery_app/src/pages/login_page.dart';
import 'package:delivery_app/src/pages/welcome_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'forgot': (BuildContext context) => ForgotPasswordPage(),
};
