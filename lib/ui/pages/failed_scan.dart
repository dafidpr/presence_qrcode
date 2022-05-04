import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:presence_qrcode/shared/theme.dart';
import 'package:presence_qrcode/ui/widgets/custom_button.dart';
import 'package:presence_qrcode/ui/widgets/custom_input.dart';

class FailedScanScreen extends StatelessWidget {
  String message;
  FailedScanScreen({Key? key, required this.message}) : super(key: key);

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
                      'assets/images/failed_scan.png',
                      width: 253,
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text(
                      'Opps! Absensi kamu gagal',
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
                      message,
                      textAlign: TextAlign.center,
                      style: greyTextStyle1.copyWith(
                          fontSize: 13, fontWeight: medium),
                    ),
                  ),
                ),
                CustomButton(
                    text: 'Kembali',
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    backgroundColor: kPrimaryColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
