import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:presence_qrcode/shared/theme.dart';
import 'package:presence_qrcode/ui/widgets/custom_button.dart';
import 'package:presence_qrcode/ui/widgets/custom_input.dart';

class SuccessSignUpScreen extends StatelessWidget {
  const SuccessSignUpScreen({Key? key}) : super(key: key);

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
                      top: MediaQuery.of(context).size.height * 0.13,
                      bottom: 35),
                  child: Center(
                    child: Image.asset(
                      'assets/images/success_register.png',
                      width: 253,
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text(
                      'Yeayy! Registrasi akun \nkamu berhasil',
                      textAlign: TextAlign.center,
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Center(
                    child: Text(
                      'Absensi dengan menggunakan\nQRCode dan lokasi',
                      textAlign: TextAlign.center,
                      style: greyTextStyle1.copyWith(
                          fontSize: 13, fontWeight: medium),
                    ),
                  ),
                ),
                CustomButton(
                    text: 'Masuk',
                    onPressed: () {},
                    backgroundColor: kPrimaryColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
