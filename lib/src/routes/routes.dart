import 'package:delivery_app/src/features/presentation/collection_detail_page/view/collection_detail_page.dart';
import 'package:flutter/cupertino.dart';

import 'package:delivery_app/src/features/presentation/tabs/tabs_files.dart';
import 'package:delivery_app/src/features/presentation/collections_page/View/collection_page.dart';
import 'package:delivery_app/src/features/presentation/filter_page.dart/view/filter_page.dart';
import 'package:delivery_app/src/features/presentation/search_page/view/search_page.dart';
import 'package:delivery_app/src/features/presentation/forgot_password_page/View/forgot_password_page.dart';
import 'package:delivery_app/src/features/presentation/sign_up_page/View/sign_up_page.dart';
import 'package:delivery_app/src/features/presentation/login_page/View/login_page.dart';
import 'package:delivery_app/src/features/presentation/welcome_page/View/welcome_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'forgot': (BuildContext context) => ForgotPasswordPage(),
  'sign-up': (BuildContext context) => SignUpPage(),
  'tabs': (BuildContext context) => TabsPage(),
  'search': (BuildContext context) => SearchPage(),
  'filter': (BuildContext context) => FilterPage(),
  'collection': (BuildContext context) => CollectionPage(),
  'collection-detail': (BuildContext context) => CollectionDetailPage(),
};
