import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:skillana_flutter/widgets/general/form_input.dart';

class ForgotPassword extends StatelessWidget {
  final emailFC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: _body(context),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Lupa Password',
          style: GoogleFonts.poppins(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
        centerTitle: true,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.grey,
            size: 26,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }

  Widget _body(context) {
    return SingleChildScrollView(
      child: Container(
        width: (MediaQuery.of(context).size.width),
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [_logo(), _content(), _loginBtn()],
        ),
      ),
    );
  }

  Widget _logo() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 40),
      child: Center(
        child: Image.asset(
          'assets/images/forgot_password.png',
          width: 420,
          fit: BoxFit.contain,
          alignment: Alignment.center,
        ),
      ),
    );
  }

  Widget _loginBtn() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Kirim",
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w400,
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

  Widget _content() {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 50, 30, 30),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(30, 0, 30, 40),
            child: Text(
                'Gak papa, Kami akan bantu kamu menemukan password baru. Tuliskan email kamu di kolom bawah ini ya!',
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: HexColor('#556870'),
                  fontWeight: FontWeight.w300,
                )),
          ),
          formInput(
              title: 'Email',
              placeholder: 'Alamat Email Kamu',
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
        ],
      ),
    );
  }
}
