import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';
import 'package:skillana_flutter/routes/routes.dart';

class AssesmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: _body(context),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Asesmenku',
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
}

Widget _body(context) {
  return SingleChildScrollView(
    child: Container(
      width: (MediaQuery.of(context).size.width),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [_content(context)],
      ),
    ),
  );
}

Widget _content(context) {
  return Container(
    padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
    decoration: BoxDecoration(color: Colors.white),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Container(
              height: 200,
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage('assets/images/yellow_bg.png'),
                      fit: BoxFit.cover)),
              child: Stack(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Tes Minat dan Bakat',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: HexColor('#363941'),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Text(
                      'Kenali kelebihan dan kekurangan kamu,serta karier yang cocok dengan kepribadianmu',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: HexColor('#363941'),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 150,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.toNamed(AppPages.ASSESMENT_MBTI);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Tes Sekarang",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.grey,
                                  size: 26,
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              primary: HexColor('#F8F8FA'),
                              shadowColor: Colors.grey,
                              shape: StadiumBorder(),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ]),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: 200,
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage('assets/images/blue_bg.png'),
                      fit: BoxFit.cover)),
              child: Stack(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Tes Kepribadian',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: HexColor('#363941'),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Text(
                      'Kenali kelebihan dan kekurangan kamu,serta karier yang cocok dengan kepribadianmu',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: HexColor('#363941'),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 150,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Tes Sekarang",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.grey,
                                  size: 26,
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              primary: HexColor('#F8F8FA'),
                              shadowColor: Colors.grey,
                              shape: StadiumBorder(),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ]),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: 200,
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage('assets/images/green_bg.png'),
                      fit: BoxFit.cover)),
              child: Stack(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Tes Kepemimpinan',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: HexColor('#363941'),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Text(
                      'Kenali kelebihan dan kekurangan kamu,serta karier yang cocok dengan kepribadianmu',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: HexColor('#363941'),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 150,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.toNamed(AppPages.ASSESMENT_MSDT);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Tes Sekarang",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.grey,
                                  size: 26,
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              primary: HexColor('#F8F8FA'),
                              shadowColor: Colors.grey,
                              shape: StadiumBorder(),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ]),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: 200,
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage('assets/images/purple_bg.png'),
                      fit: BoxFit.cover)),
              child: Stack(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Tes Gaya Kerja',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: HexColor('#363941'),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Text(
                      'Kenali kelebihan dan kekurangan kamu,serta karier yang cocok dengan kepribadianmu',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: HexColor('#363941'),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 150,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Tes Sekarang",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.grey,
                                  size: 26,
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              primary: HexColor('#F8F8FA'),
                              shadowColor: Colors.grey,
                              shape: StadiumBorder(),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ]),
            ),
          ],
        ),
      ],
    ),
  );
}
