import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';
import 'package:skillana_flutter/controllers/assesment/mbti/result.dart';
import 'package:skillana_flutter/routes/routes.dart';
import 'package:skillana_flutter/widgets/general/bar_detail.dart';
import 'package:dotted_border/dotted_border.dart';

class ResultMBTI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: _body(context),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Hasil Tes Minat dan Bakat',
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
    return GetBuilder<ResultMBTIController>(
        builder: (controller) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                width: (MediaQuery.of(context).size.width),
                decoration: BoxDecoration(color: HexColor('#f2f3f9')),
                child: Column(
                  children: [
                    _card_message(context, controller.resultData),
                    _image_content(controller.resultData),
                    bar_detail(
                        width: (MediaQuery.of(context).size.width) - 50,
                        flexLeft: controller.resultData?['dimensi']
                                ?['extrovert'] ??
                            0,
                        flexRight: controller.resultData?['dimensi']
                                ?['introvert'] ??
                            0,
                        placeholderLeft: 'Extrovert',
                        placeholderRight: 'Introvert',
                        amountFlexLeft:
                            '${controller.resultData?['dimensi']?['extrovert']}%',
                        amountFlexRight:
                            '${controller.resultData?['dimensi']?['introvert']}%'),
                    SizedBox(
                      height: 15,
                    ),
                    bar_detail(
                        width: (MediaQuery.of(context).size.width) - 50,
                        flexLeft:
                            controller.resultData?['dimensi']?['sensing'] ?? 0,
                        flexRight: controller.resultData?['dimensi']
                                ?['intuition'] ??
                            0,
                        placeholderLeft: 'Sensing',
                        placeholderRight: 'Intuition',
                        amountFlexLeft:
                            '${controller.resultData?['dimensi']?['sensing']}%',
                        amountFlexRight:
                            '${controller.resultData?['dimensi']?['intuition']}%'),
                    SizedBox(
                      height: 15,
                    ),
                    bar_detail(
                        width: (MediaQuery.of(context).size.width) - 50,
                        flexLeft:
                            controller.resultData?['dimensi']?['thinking'] ?? 0,
                        flexRight:
                            controller.resultData?['dimensi']?['feeling'] ?? 0,
                        placeholderLeft: 'Thinking',
                        placeholderRight: 'Feeling',
                        amountFlexLeft:
                            '${controller.resultData?['dimensi']?['thinking']}%',
                        amountFlexRight:
                            '${controller.resultData?['dimensi']?['feeling']}%'),
                    SizedBox(
                      height: 15,
                    ),
                    bar_detail(
                        width: (MediaQuery.of(context).size.width) - 50,
                        flexLeft:
                            controller.resultData?['dimensi']?['judging'] ?? 0,
                        flexRight: controller.resultData?['dimensi']
                                ?['perceiving'] ??
                            0,
                        placeholderLeft: 'Judging',
                        placeholderRight: 'Perceiving',
                        amountFlexLeft:
                            '${controller.resultData?['dimensi']?['judging']}%',
                        amountFlexRight:
                            '${controller.resultData?['dimensi']?['perceiving']}%'),
                    SizedBox(
                      height: 15,
                    ),
                    _quotes(context, controller.resultData),
                    _characteristic(context, controller.resultData),
                    _cognitif(context, controller.resultData),
                    _profession(context, controller.resultData),
                    _pathner(context, controller.resultData),
                    _suggestion(context, controller.resultData)
                  ],
                ),
              ),
            ));
  }

  Widget _card_message(context, item) {
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
    print(item);
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Center(
        child: Column(
          children: [
            Text(
              (item?['result']?['predicate']).toString(),
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            item?['result']?['type'] != null
                ? Image.asset(
                    'assets/16personalities/${item?['result']?['type']}.png',
                    width: 200,
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  )
                : Container(color: Colors.white),
            Text(
              (item?['result']?['type']).toString().toUpperCase(),
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              (item?['description']).toString(),
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }

  Widget _quotes(context, item) {
    return Container(
      width: (MediaQuery.of(context).size.width) - 100,
      margin: EdgeInsets.symmetric(vertical: 30),
      child: Text(
        '"${item?['result']?['quotes']}"',
        style: GoogleFonts.poppins(
            fontSize: 14,
            color: Colors.blueGrey,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _characteristic(context, item) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40),
      width: (MediaQuery.of(context).size.width),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              'Karakteristik',
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: HexColor('#0b4961'),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: MarkdownBody(
                data: (item?['result']?['characteristics']).toString(),
                styleSheet: MarkdownStyleSheet.fromTheme(ThemeData(
                    textTheme: TextTheme(
                        bodyText2: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ))))),
          ),
        ],
      ),
    );
  }

  Widget _cognitif(context, item) {
    return Container(
      child: Column(
        children: [
          Container(
            width: (MediaQuery.of(context).size.width),
            margin: EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Text(
                  'Fungsi Kognitif',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: HexColor('#0b4961'),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Kemampuan Berpikir',
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: DottedBorder(
              borderType: BorderType.RRect,
              strokeWidth: 1.5,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              dashPattern: [3],
              radius: Radius.circular(12),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          'Fungsi Dominan',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: HexColor('#0b4961'),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MarkdownBody(
                      data: (item?['result']?['dominan']).toString(),
                      styleSheet: MarkdownStyleSheet.fromTheme(ThemeData(
                          textTheme: TextTheme(
                              bodyText2: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      )))))
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: DottedBorder(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              borderType: BorderType.RRect,
              strokeWidth: 1.5,
              dashPattern: [3],
              radius: Radius.circular(12),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          'Fungsi Sekunder',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: HexColor('#0b4961'),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MarkdownBody(
                      data: (item?['result']?['sekunder']).toString(),
                      styleSheet: MarkdownStyleSheet.fromTheme(ThemeData(
                          textTheme: TextTheme(
                              bodyText2: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      )))))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _profession(context, item) {
    return Container(
      width: (MediaQuery.of(context).size.width),
      margin: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Profesi Yang Cocok',
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: HexColor('#0b4961'),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          MarkdownBody(
              data: (item?['result']?['profession']).toString(),
              styleSheet: MarkdownStyleSheet.fromTheme(ThemeData(
                  textTheme: TextTheme(
                      bodyText2: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              )))))
        ],
      ),
    );
  }

  Widget _pathner(context, item) {
    return Container(
      width: (MediaQuery.of(context).size.width),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(bottom: 15, left: 30),
            child: Text(
              'Pathner Alami',
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 30, right: 8),
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        item?['result']?['partner1'] != null
                            ? Image.asset(
                                'assets/16personalities/${item?['result']?['partner1']}.png',
                                width: 90,
                                fit: BoxFit.contain,
                                alignment: Alignment.center,
                              )
                            : Container(
                                color: Colors.white,
                              ),
                        Text(
                          (item?['result']?['partner1'])
                              .toString()
                              .toUpperCase(),
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 30, left: 8),
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        item?['result']?['partner2'] != null
                            ? Image.asset(
                                'assets/16personalities/${item?['result']?['partner2']}.png',
                                width: 90,
                                fit: BoxFit.contain,
                                alignment: Alignment.center,
                              )
                            : Container(color: Colors.white),
                        Text(
                          (item?['result']?['partner2'])
                              .toString()
                              .toUpperCase(),
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _suggestion(context, item) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40),
      width: (MediaQuery.of(context).size.width),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              'Saran Pengembangan',
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: MarkdownBody(
                  data: (item?['result']?['suggestion']).toString(),
                  styleSheet: MarkdownStyleSheet.fromTheme(ThemeData(
                      textTheme: TextTheme(
                          bodyText2: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  )))))),
        ],
      ),
    );
  }
}
