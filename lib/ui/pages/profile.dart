import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:presence_qrcode/shared/theme.dart';
import 'package:presence_qrcode/ui/widgets/profile/list_setting.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/background_home.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.2,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.04,
                    bottom: 35,
                    left: defaultMargin,
                    right: defaultMargin),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/user.png'),
                        // radius: 20,
                        minRadius: 20,
                        maxRadius: 40,
                      ),
                    ),
                    Text(
                      'Dafid Prasetyo',
                      style: whiteTextStyle.copyWith(
                          fontSize: 16, fontWeight: semiBold),
                    ),
                    Text(
                      'dafidpr | dafidpr@gmail.com',
                      style: whiteTextStyle.copyWith(
                          fontSize: 11, fontWeight: medium),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.3,
                  left: defaultMargin,
                  right: defaultMargin,
                  bottom: defaultMargin,
                ),
                child: Column(
                  children: [
                    ListSetting(
                      title: 'Account',
                      icon: IconlyBold.profile,
                    ),
                    ListSetting(
                      title: 'Password',
                      icon: IconlyBold.unlock,
                    ),
                    ListSetting(
                      title: 'Tentang Aplikasi',
                      icon: IconlyBold.category,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
