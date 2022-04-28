import 'package:flutter/material.dart';
import 'package:presence_qrcode/router/main.dart';
import 'package:presence_qrcode/ui/pages/failed_scan.dart';
import 'package:presence_qrcode/ui/pages/home.dart';
import 'package:presence_qrcode/ui/pages/signin.dart';
import 'package:presence_qrcode/ui/pages/signup.dart';
import 'package:presence_qrcode/ui/pages/splash.dart';
import 'package:presence_qrcode/ui/pages/success_scan.dart';
import 'package:presence_qrcode/ui/pages/success_signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: buildRouter(context),
      initialRoute: '/splash',
    );
  }
}
