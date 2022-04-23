import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:presence_qrcode/shared/theme.dart';

class CustomInput extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final IconData prefixIcon;

  CustomInput(
      {required this.hintText,
      required this.obscureText,
      required this.prefixIcon});

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      child: TextFormField(
        obscureText: obscureText,
        style: purpleTextStyle.copyWith(fontWeight: medium, fontSize: 13),
        cursorColor: kBlackColor,
        decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
            color: kPrimaryColor,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
              width: 1.5,
            ),
          ),
          prefixStyle: greyTextStyle3.copyWith(
            fontSize: 13,
            fontWeight: medium,
          ),
          hintText: hintText,
          hintStyle: greyTextStyle3.copyWith(
            fontSize: 13,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
