import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:skillana_flutter/controllers/assesment/msdt/msdt.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class TestMSDT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: _body(context),
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'Tes Kepemimpinan',
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget _body(context) {
    return GetBuilder<MSDTController>(
        builder: (controller) => controller.isLoading
            ? Center(
                child: Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  child: LoadingIndicator(
                      indicatorType: Indicator.circleStrokeSpin,
                      colors: const [Colors.blue],
                      strokeWidth: 2,
                      backgroundColor: Colors.transparent,
                      pathBackgroundColor: Colors.transparent),
                ),
              )
            : Container(
                width: (MediaQuery.of(context).size.width),
                decoration: BoxDecoration(color: HexColor('#f2f3f9')),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                          itemCount: controller.questionData?.length,
                          itemBuilder: (context, i) {
                            final code = controller.questionData[i]['code'];

                            return Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 20),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 40),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              controller.answerData(code, 'a');
                                            },
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Container(
                                                  width: 15,
                                                  height: 15,
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.only(
                                                      right: 10),
                                                  decoration: BoxDecoration(
                                                      color:
                                                          HexColor('#F6F9FB'),
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                          color:
                                                              Colors.black87)),
                                                ),
                                                controller.answersData[code] ==
                                                        'a'
                                                    ? Container(
                                                        width: 8,
                                                        height: 8,
                                                        margin: EdgeInsets.only(
                                                            right: 10),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.orange,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                      )
                                                    : Container(
                                                        width: 8,
                                                        height: 8,
                                                        margin: EdgeInsets.only(
                                                            right: 10),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: HexColor(
                                                              '#F6F9FB'),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                      )
                                              ],
                                            ),
                                          ),
                                          Flexible(
                                              child: MarkdownBody(
                                                  data:
                                                      '${controller.questionData[i]?['a']}',
                                                  styleSheet: MarkdownStyleSheet
                                                      .fromTheme(ThemeData(
                                                          textTheme: TextTheme(
                                                              bodyText2:
                                                                  GoogleFonts
                                                                      .poppins(
                                                    fontSize: 14,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                  )))))),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              controller.answerData(code, 'b');
                                            },
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Container(
                                                  width: 15,
                                                  height: 15,
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.only(
                                                      right: 10),
                                                  decoration: BoxDecoration(
                                                      color:
                                                          HexColor('#F6F9FB'),
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                          color:
                                                              Colors.black87)),
                                                ),
                                                controller.answersData[code] ==
                                                        'b'
                                                    ? Container(
                                                        width: 8,
                                                        height: 8,
                                                        margin: EdgeInsets.only(
                                                            right: 10),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.orange,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                      )
                                                    : Container(
                                                        width: 8,
                                                        height: 8,
                                                        margin: EdgeInsets.only(
                                                            right: 10),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: HexColor(
                                                              '#F6F9FB'),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                      )
                                              ],
                                            ),
                                          ),
                                          Flexible(
                                              child: MarkdownBody(
                                                  data:
                                                      '${controller.questionData[i]?['b']}',
                                                  styleSheet: MarkdownStyleSheet
                                                      .fromTheme(ThemeData(
                                                          textTheme: TextTheme(
                                                              bodyText2:
                                                                  GoogleFonts
                                                                      .poppins(
                                                    fontSize: 14,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                  )))))),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              child: ElevatedButton(
                                child: Text('Prev'),
                                onPressed: () => controller.decrementPage(),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                  shadowColor: Colors.grey,
                                  elevation: 2,
                                  padding: EdgeInsets.all(14),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              child: ElevatedButton(
                                child: Text('Next'),
                                onPressed: () => controller.incrementPage(),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                  shadowColor: Colors.grey,
                                  elevation: 2,
                                  padding: EdgeInsets.all(14),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )));
  }
}
