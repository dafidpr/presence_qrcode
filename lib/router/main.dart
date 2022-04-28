import 'package:flutter/material.dart';
import 'package:presence_qrcode/ui/pages/failed_scan.dart';
import 'package:presence_qrcode/ui/pages/home.dart';
import 'package:presence_qrcode/ui/pages/signin.dart';
import 'package:presence_qrcode/ui/pages/signup.dart';
import 'package:presence_qrcode/ui/pages/splash.dart';
import 'package:presence_qrcode/ui/pages/success_scan.dart';
import 'package:presence_qrcode/ui/pages/success_signup.dart';

import 'main_page.dart';

Map<String, WidgetBuilder> buildRouter(BuildContext context) {
  return {
    'page': (context) => MainPage(),
    '/home': (context) => HomeScreen(),
    '/login': (context) => SignInScreen(),
    '/register': (context) => SignUpScreen(),
    '/success-signup': (context) => SuccessSignUpScreen(),
    '/success-scan': (context) => SuccessScanScreen(),
    '/failed-scan': (context) => FailedScanScreen(),
    '/splash': (context) => SplashScreen(),
  };
}
