import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class GetStarted extends StatelessWidget {
  // final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Colors.transparent,
    //   statusBarBrightness: Brightness.dark,
    // ));

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
          children: [_header_txt(), _logo(), _loginBtn(), _footer_login()],
        ),
      ),
    );
  }
}

Widget _header_txt() {
  return Container(
      margin: EdgeInsets.only(top: 100),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 100),
            child: Container(
              child: Text(
                'Ciptakan Impianmu',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  color: HexColor('#0B4961'),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Text(
            '#TemukanPotensimu',
            style: GoogleFonts.poppins(
              fontSize: 24,
              color: HexColor('#FFA733'),
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ));
}

Widget _logo() {
  return Container(
    margin: EdgeInsets.only(top: 50),
    child: Center(
      child: Image.asset(
        'assets/images/get_started.png',
        width: 420,
        fit: BoxFit.contain,
        alignment: Alignment.center,
      ),
    ),
  );
}

Widget _loginBtn() {
  return Container(
    margin: EdgeInsets.only(top: 100),
    child: ElevatedButton(
      onPressed: () {
        Get.toNamed('/register');
      },
      child: Text(
        "Daftar Sekarang",
        style: GoogleFonts.poppins(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: HexColor('#0B4961'),
        shadowColor: Colors.grey,
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 14),
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
              'Sudah Punya Akun?',
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.lightBlue[900],
                fontWeight: FontWeight.w400,
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/login');
              },
              child: Text(
                ' Masuk',
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
