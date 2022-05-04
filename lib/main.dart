import 'package:flutter/material.dart';
import 'package:presence_qrcode/router/main.dart';

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
