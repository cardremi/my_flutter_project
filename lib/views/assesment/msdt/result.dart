import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';
import 'package:skillana_flutter/controllers/assesment/mbti/result.dart';
import 'package:skillana_flutter/controllers/assesment/msdt/result.dart';
import 'package:skillana_flutter/routes/routes.dart';
import 'package:skillana_flutter/widgets/general/bar_detail.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:dotted_border/dotted_border.dart';

class ResultMSDT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: _body(context),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Hasil Tes Kepemimpinan',
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w500,
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
    return GetBuilder<ResultMSDTController>(
        builder: (controller) => controller.resultData != null
            ? SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: 10, bottom: 20),
                  width: (MediaQuery.of(context).size.width),
                  decoration: BoxDecoration(color: HexColor('#f2f3f9')),
                  child: Column(
                    children: [
                      _card_message(context),
                      _image_content(controller.resultData),
                      _content(controller.resultData)
                    ],
                  ),
                ),
              )
            : Container(
                color: Colors.white,
                width: (MediaQuery.of(context).size.width)));
  }

  Widget _card_message(context) {
    return Container(
      alignment: Alignment.topCenter,
      width: (MediaQuery.of(context).size.width) - 50,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
          color: HexColor('#D9F7BE'), borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Selamat Kamu memenangkan hadiah undian , ambil segera sebelum diambil orang lain',
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'kamu bisa mengklaim ini seblum tanggal 20 januari 2022 , ambil segera sebelum diambil',
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  Widget _image_content(item) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Center(
          child: Obx(() => Column(
                children: [
                  Text(
                    'Tipe Kepemimpinan kamu adalah',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    (item?['type']).toString(),
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: HexColor('#0b4961'),
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center,
                  ),
                  item?['type'] != null
                      ? Image.asset(
                          'assets/Msdt/${item?['type']}.png',
                          width: 150,
                          fit: BoxFit.contain,
                          alignment: Alignment.center,
                        )
                      : Container(
                          color: Colors.white,
                        ),
                ],
              ))),
    );
  }

  Widget _content(item) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              (item?['description']).toString(),
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          BulletedList(
            bullet: Icon(
              Icons.fiber_manual_record,
              color: Colors.black,
              size: 10,
            ),
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            listItems: item?['lists'],
          ),
        ],
      ),
    );
  }
}
