import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:presence_qrcode/shared/theme.dart';
import 'package:presence_qrcode/ui/widgets/custom_button.dart';
import 'package:presence_qrcode/ui/widgets/custom_input.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(defaultMargin),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.08,
                      bottom: 35),
                  child: Center(
                    child: Image.asset(
                      'assets/images/logo_dark.png',
                      width: 180,
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text(
                      'Let’s get started.',
                      style: blackTextStyle.copyWith(
                          fontSize: 28, fontWeight: semiBold),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Center(
                    child: Text(
                      'Absensi dengan menggunakan\nQRCode dan lokasi',
                      textAlign: TextAlign.center,
                      style: greyTextStyle1.copyWith(
                          fontSize: 13, fontWeight: medium),
                    ),
                  ),
                ),
                CustomInput(
                    hintText: 'your username',
                    obscureText: false,
                    prefixIcon: IconlyBold.profile),
                CustomInput(
                    hintText: 'your password',
                    obscureText: true,
                    prefixIcon: IconlyBold.lock),
                CustomButton(
                    text: 'Masuk',
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    backgroundColor: kPrimaryColor),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Belum punya akun? ',
                        style: greyTextStyle3.copyWith(
                          fontSize: 13,
                          fontWeight: medium,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: new Text(
                          'Daftar',
                          style: purpleTextStyle.copyWith(
                            fontSize: 13,
                            fontWeight: semiBold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}