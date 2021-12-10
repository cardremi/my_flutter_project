import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skillana_flutter/widgets/general/form_input.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatelessWidget {
  final emailFC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: _body(context),
      backgroundColor: Colors.white,
    );
  }

  Widget _body(context) {
    return SingleChildScrollView(
      child: Container(
        width: (MediaQuery.of(context).size.width),
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [_content(), _loginBtn(), _footer_login()],
        ),
      ),
    );
  }

  Widget _logo() {
    return Container(
      child: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: 120,
          fit: BoxFit.contain,
          alignment: Alignment.center,
        ),
      ),
    );
  }

  Widget _content() {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 50, 30, 30),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          SizedBox(height: 50),
          _logo(),
          SizedBox(height: 60),
          formInput(
              title: 'Email / No. Telepon',
              placeholder: 'Email / No. Telepon',
              controller: emailFC,
              inputType: TextInputType.emailAddress,
              inputAction: TextInputAction.next,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Masukkan email terlebih dahulu';
                }
                if (!GetUtils.isEmail(value)) {
                  return 'Masukkan email dengan benar';
                }
                return null;
              },
              colorBackground: '#F8F8FA'),
          SizedBox(height: 10),
          formInput(
              title: 'Password',
              placeholder: 'Password',
              controller: emailFC,
              inputType: TextInputType.emailAddress,
              inputAction: TextInputAction.next,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Masukkan email terlebih dahulu';
                }
                if (!GetUtils.isEmail(value)) {
                  return 'Masukkan email dengan benar';
                }
                return null;
              },
              colorBackground: '#F8F8FA'),
          SizedBox(height: 15),
          Container(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                Get.toNamed('/forgot_password');
              },
              child: Text(
                'Lupa Password?',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  color: Colors.red,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _loginBtn() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: ElevatedButton(
        onPressed: () {
          Get.toNamed('/register');
        },
        child: Text(
          "Login",
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: HexColor('#0B4961'),
          shadowColor: Colors.grey,
          padding: EdgeInsets.symmetric(horizontal: 140, vertical: 10),
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

  Widget _footer_login() {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Belum Punya Akun?',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.lightBlue[900],
                  fontWeight: FontWeight.w400,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/register');
                },
                child: Text(
                  ' Daftar',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: HexColor('#0B4961'),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
