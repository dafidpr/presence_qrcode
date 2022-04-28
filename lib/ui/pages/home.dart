import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:iconly/iconly.dart';
import 'package:presence_qrcode/shared/theme.dart';
import 'package:presence_qrcode/ui/widgets/home/list_presence.dart';
import 'package:presence_qrcode/ui/widgets/home/overview_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.04,
                    bottom: 35,
                    left: defaultMargin,
                    right: defaultMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello',
                          style: whiteTextStyle.copyWith(
                              fontSize: 24, fontWeight: semiBold),
                        ),
                        Text(
                          'Welcome back, Dafid!',
                          style: whiteTextStyle.copyWith(
                              fontSize: 11, fontWeight: medium),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/user.png'),
                        radius: 20,
                      ),
                    ),
                  ],
                ),
              ),
              OverViewCardWidget(
                countPresent: '28',
                countAbsent: '1',
                month: '22 April 2022',
              ),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.38,
                  left: defaultMargin,
                  right: defaultMargin,
                  bottom: defaultMargin,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'Riwayat Presensi',
                            style: blackTextStyle.copyWith(
                                fontSize: 14, fontWeight: semiBold),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Lihat Semua',
                            style: blackTextStyle.copyWith(
                                fontSize: 10, fontWeight: regular),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListPresence(
                      isDatang: false,
                      presenceDate: '22 April 2022',
                      presenceTime: '06:00',
                    ),
                    ListPresence(
                      isDatang: false,
                      presenceDate: '22 April 2022',
                      presenceTime: '06:00',
                    ),
                    ListPresence(
                      isDatang: false,
                      presenceDate: '22 April 2022',
                      presenceTime: '06:00',
                    ),
                    ListPresence(
                      isDatang: false,
                      presenceDate: '22 April 2022',
                      presenceTime: '06:00',
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
