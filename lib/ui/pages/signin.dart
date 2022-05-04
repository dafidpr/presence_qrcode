import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:presence_qrcode/services/api/rest_api_service.dart';
import 'package:presence_qrcode/shared/theme.dart';
import 'package:presence_qrcode/ui/widgets/custom_button.dart';
import 'package:presence_qrcode/ui/widgets/custom_input.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  _showSnackBar(String message) {
    final snackBar = SnackBar(
      content: Text(message),
      action: SnackBarAction(
        label: 'Tutup',
        onPressed: () {},
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomInput(
                          validator: (usernameValidator) {
                            if (usernameValidator!.isEmpty) {
                              return 'Username tidak boleh kosong';
                            }
                            return null;
                          },
                          controller: _usernameController,
                          hintText: 'your username',
                          obscureText: false,
                          prefixIcon: IconlyBold.profile),
                      CustomInput(
                          controller: _passwordController,
                          validator: (passwordValidator) {
                            if (passwordValidator!.isEmpty) {
                              return 'Password tidak boleh kosong';
                            }
                            return null;
                          },
                          hintText: 'your password',
                          obscureText: true,
                          prefixIcon: IconlyBold.lock),
                      CustomButton(
                        text: _isLoading == false ? 'Masuk' : 'Loading...',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _login();
                          }
                        },
                        backgroundColor: kPrimaryColor,
                      ),
                    ],
                  ),
                )
                // Container(
                //   margin: EdgeInsets.only(top: 30),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Text(
                //         'Belum punya akun? ',
                //         style: greyTextStyle3.copyWith(
                //           fontSize: 13,
                //           fontWeight: medium,
                //         ),
                //       ),
                //       GestureDetector(
                //         onTap: () {
                //           Navigator.pushNamed(context, '/register');
                //         },
                //         child: new Text(
                //           'Daftar',
                //           style: purpleTextStyle.copyWith(
                //             fontSize: 13,
                //             fontWeight: semiBold,
                //             decoration: TextDecoration.underline,
                //           ),
                //         ),
                //       )
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _login() async {
    setState(() {
      _isLoading = true;
    });

    var data = {
      'username': _usernameController.text,
      'password': _passwordController.text,
    };

    var response = await ApiService().auth(data, 'auth/login');
    var body = json.decode(response.body);

    if (body['success'] == true) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', json.encode(body['data']['token']));
      prefs.setString('user', json.encode(body['data']['data']));

      Navigator.pushNamed(context, 'page');
    } else {
      _showSnackBar(body['message']);
    }
    setState(() {
      _isLoading = false;
    });
  }
}
