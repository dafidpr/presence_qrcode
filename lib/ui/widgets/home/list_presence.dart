import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:presence_qrcode/shared/theme.dart';

class ListPresence extends StatelessWidget {
  final bool isDatang;
  final String presenceDate;
  final String presenceTime;
  // final String latitude;
  // final String longitude;

  ListPresence(
      {this.isDatang = true,
      required this.presenceDate,
      required this.presenceTime});

  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('success tap'),
      child: Container(
        width: double.infinity,
        height: 57,
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: kWhiteColor,
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.03), blurRadius: 30),
          ],
        ),
        child: Row(
          children: [
            Container(
              margin:
                  EdgeInsets.only(left: defaultMargin, right: defaultMargin),
              child: Icon(
                IconlyBold.scan,
                size: 35,
                color: kPrimaryColor,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Absensi ${isDatang == true ? 'Datang' : 'Pulang'}',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Tanggal ${presenceDate} Pukul ${presenceTime}',
                    style: blackTextStyle.copyWith(
                      fontSize: 7,
                      fontWeight: regular,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
