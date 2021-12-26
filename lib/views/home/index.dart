import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';
import 'package:skillana_flutter/routes/routes.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: _body(context),
      backgroundColor: Colors.white,
    );
  }
}

Widget _body(context) {
  return SingleChildScrollView(
    child: Container(
      width: (MediaQuery.of(context).size.width),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [_header(), _content(context), _carousel_content()],
      ),
    ),
  );
}

Widget _header() {
  return Container(
      margin: EdgeInsets.fromLTRB(30, 40, 30, 45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hai Cantik Aja',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: HexColor('#18172B'),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Yuk temukan potensimu',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: HexColor('#18172B'),
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: () => Get.toNamed(AppPages.PROFILE),
            child: CircleAvatar(
              backgroundColor: Colors.brown.shade800,
              child: const Text('AH'),
            ),
          )
        ],
      ));
}

Widget _content(context) {
  return Container(
    padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
    decoration: BoxDecoration(color: Colors.white),
    child: Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(bottom: 20),
          child: Text(
            'Layanan Kami',
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: HexColor('#18172B'),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Wrap(
          direction: Axis.horizontal,
          spacing: 17.0,
          runSpacing: 24.0,
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage('assets/images/yellow_bg.png'),
                          fit: BoxFit.cover)),
                  child: Stack(children: [
                    Center(
                      child: Image.asset(
                        'assets/images/psic_as.png',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(12),
                        splashColor: Colors.white,
                        onTap: () => Get.toNamed(AppPages.ASSESMENT_PAGE),
                      ),
                    ),
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Assesmenku',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: HexColor('#18172B'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage('assets/images/blue_bg.png'),
                          fit: BoxFit.cover)),
                  child: Stack(children: [
                    Center(
                      child: Image.asset(
                        'assets/images/video_as.png',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(12),
                        splashColor: Colors.white,
                        onTap: () {},
                      ),
                    ),
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Video CV-ku',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: HexColor('#18172B'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage('assets/images/green_bg.png'),
                          fit: BoxFit.cover)),
                  child: Stack(children: [
                    Center(
                      child: Image.asset(
                        'assets/images/job_vacancy.png',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(12),
                        splashColor: Colors.white,
                        onTap: () {},
                      ),
                    ),
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Lowongan Kerja',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: HexColor('#18172B'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage('assets/images/purple_bg.png'),
                          fit: BoxFit.cover)),
                  child: Stack(children: [
                    Center(
                      child: Image.asset(
                        'assets/images/application.png',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(12),
                        splashColor: Colors.white,
                        onTap: () {},
                      ),
                    ),
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Lamaranku',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: HexColor('#18172B'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _carousel_content() {
  return CarouselSlider(
    options: CarouselOptions(
      height: 180.0,
      enlargeCenterPage: true,
    ),
    items: [1, 2, 3, 4, 5].map((i) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.zero,
                            bottomRight: Radius.zero,
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                            fit: BoxFit.fill,
                          )),
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Flexible(flex: 1, child: Text('Burung Hantu $i')),
                ],
              ));
        },
      );
    }).toList(),
  );
}
