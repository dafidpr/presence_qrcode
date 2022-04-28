import 'dart:async';
import 'package:flutter/material.dart';
import 'package:presence_qrcode/shared/theme.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/login');
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Center(
                  child: Image.asset(
                    'assets/images/logo_light.png',
                    width: 180,
                    height: 100,
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    'Absensi dengan menggunakan\nQRCode dan lokasi',
                    textAlign: TextAlign.center,
                    style: greyTextStyle1.copyWith(
                      fontSize: 13,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
