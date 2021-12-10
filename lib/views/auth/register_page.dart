import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skillana_flutter/widgets/general/form_input.dart';
import 'package:hexcolor/hexcolor.dart';

class RegisterPage extends StatelessWidget {
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
          children: [_header_txt(), _content(), _loginBtn(), _footer_login()],
        ),
      ),
    );
  }

  Widget _header_txt() {
    return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 30),
              alignment: Alignment.centerLeft,
              child: Text(
                'Hai, Selamat Datang',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 5, 60, 0),
              alignment: Alignment.centerLeft,
              child: Text('Yuk lengkapi dulu form pendaftaran di bawah ini! ',
                  textAlign: TextAlign.justify,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: HexColor('#556870'),
                    fontWeight: FontWeight.w300,
                  )),
            ),
          ],
        ));
  }

  Widget _content() {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          SizedBox(height: 20),
          formInput(
              title: 'Nama Lengkap',
              placeholder: 'Nama Lengkapmu',
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
              title: 'Nama Panggilan',
              placeholder: 'Nama Panggilanmu',
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
              title: 'Email',
              placeholder: 'Alamat Emailmu',
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
              title: 'No. Telepon',
              placeholder: 'No. Teleponmu',
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
              placeholder: 'Buat Passwordmu',
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
              title: 'Ulangi Password',
              placeholder: 'Ulangi Passwordmu',
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

  Widget _loginBtn() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Daftar",
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
              GestureDetector(
                onTap: () {
                  Get.toNamed('/register');
                },
                child: Text(
                  'Kebijakan Privasi',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.blue,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
