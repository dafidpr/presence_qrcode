import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:presence_qrcode/shared/theme.dart';
import 'package:presence_qrcode/ui/widgets/custom_button.dart';
import 'package:presence_qrcode/ui/widgets/custom_input.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

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
                    bottom: 25,
                  ),
                  child: Center(
                    child: Text(
                      'Registrasi akun',
                      style: blackTextStyle.copyWith(
                          fontSize: 28, fontWeight: semiBold),
                    ),
                  ),
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
                SizedBox(
                  height: 20,
                ),
                Form(
                  child: Column(
                    children: [
                      CustomInput(
                          controller: _nameController,
                          hintText: 'your full name',
                          obscureText: false,
                          prefixIcon: IconlyBold.user_3),
                      CustomInput(
                          controller: _emailController,
                          hintText: 'your email',
                          obscureText: false,
                          prefixIcon: IconlyBold.message),
                      CustomInput(
                          controller: _usernameController,
                          hintText: 'your username',
                          obscureText: false,
                          prefixIcon: IconlyBold.profile),
                      CustomInput(
                          controller: _passwordController,
                          hintText: 'your password',
                          obscureText: true,
                          prefixIcon: IconlyBold.lock),
                      CustomButton(
                          text: 'Daftar',
                          onPressed: () {
                            Navigator.pushNamed(context, '/success-signup');
                          },
                          backgroundColor: kPrimaryColor),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sudah punya akun? ',
                        style: greyTextStyle3.copyWith(
                          fontSize: 13,
                          fontWeight: medium,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: new Text(
                          'Masuk',
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
