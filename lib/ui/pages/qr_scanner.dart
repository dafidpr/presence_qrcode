import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:presence_qrcode/shared/theme.dart';
import 'package:presence_qrcode/ui/widgets/custom_button.dart';

class QRScannerScreen extends StatefulWidget {
  const QRScannerScreen({Key? key}) : super(key: key);

  @override
  State<QRScannerScreen> createState() => _QRScannerScreenState();
}

class _QRScannerScreenState extends State<QRScannerScreen> {
  String _qrScanResult = 'Unknown';

  @override
  void initState() {
    super.initState();
  }

  Future<void> scanQR() async {
    String? qrScanRes;
    try {
      qrScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Batal', true, ScanMode.QR);
    } on PlatformException {
      qrScanRes = 'Failed to get QR code';
    }
    if (!mounted) return;
    setState(() {
      qrScanRes = qrScanRes;
    });
    actionRequest(qrScanRes);
    print(qrScanRes);
  }

  Future<void> actionRequest(String? qrCode) async {
    if (qrCode != null) {
      Navigator.pushNamed(context, '/success-scan');
    } else {
      Navigator.pushNamed(context, '/failed-scan');
    }
  }

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
                      'assets/images/scan.png',
                      width: 253,
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text(
                      'Yukk Absen!',
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
                      'Scan QR Code yang ada pada website\ndan Wholaa kamu berhasil absen!',
                      textAlign: TextAlign.center,
                      style: greyTextStyle1.copyWith(
                          fontSize: 13, fontWeight: medium),
                    ),
                  ),
                ),
                CustomButton(
                    text: 'Mulai Absen',
                    onPressed: () {
                      scanQR();
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
