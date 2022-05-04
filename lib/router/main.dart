import 'package:flutter/material.dart';
import 'package:presence_qrcode/ui/pages/home.dart';
import 'package:presence_qrcode/ui/pages/presence_detail.dart';
import 'package:presence_qrcode/ui/pages/presence_history.dart';
import 'package:presence_qrcode/ui/pages/signin.dart';
import 'package:presence_qrcode/ui/pages/splash.dart';

import 'main_page.dart';

Map<String, WidgetBuilder> buildRouter(BuildContext context) {
  return {
    'page': (context) => MainPage(),
    '/home': (context) => HomeScreen(),
    '/login': (context) => SignInScreen(),
    '/presence-history': (context) => PresenceHistoryScreen(),
    '/splash': (context) => SplashScreen(),
  };
}
