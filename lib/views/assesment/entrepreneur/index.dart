import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:hexcolor/hexcolor.dart";
import "package:get/get.dart";
import 'package:skillana_flutter/controllers/assesment/entrepreneur/entrepreneur.dart';
import "package:loading_indicator/loading_indicator.dart";

class TestEntrepreneur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: _body(context),
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'Tes Entrepreneur',
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
    return GetBuilder<EntrepreneurController>(
        builder: (controller) => Container(
            width: (MediaQuery.of(context).size.width),
            decoration: BoxDecoration(color: HexColor('#f2f3f9')),
            child: controller.isLoading
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
                : Column(
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
                                        Column(
                                          children: [
                                            Text(
                                              controller.questionData[i]
                                                  ['question'],
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children:
                                                  controller.questionData[i]
                                                          ?['reverse']
                                                      ? controller
                                                          .optionsReverse
                                                          .map<Widget>((val) {
                                                          return Expanded(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                controller
                                                                    .answerData(
                                                                        code,
                                                                        (val)
                                                                            .toInt());
                                                              },
                                                              child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 15,
                                                                    height: 15,
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    margin: EdgeInsets.only(
                                                                        right:
                                                                            10),
                                                                    decoration: BoxDecoration(
                                                                        color: HexColor(
                                                                            '#F6F9FB'),
                                                                        shape: BoxShape
                                                                            .circle,
                                                                        border: Border.all(
                                                                            color:
                                                                                Colors.black87)),
                                                                  ),
                                                                  controller.answersData[
                                                                              code] ==
                                                                          (val)
                                                                              .toInt()
                                                                      ? Container(
                                                                          width:
                                                                              8,
                                                                          height:
                                                                              8,
                                                                          margin:
                                                                              EdgeInsets.only(right: 10),
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Colors.orange,
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                        )
                                                                      : Container(
                                                                          width:
                                                                              8,
                                                                          height:
                                                                              8,
                                                                          margin:
                                                                              EdgeInsets.only(right: 10),
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                HexColor('#F6F9FB'),
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                        )
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        }).toList()
                                                      : controller.options
                                                          .map<Widget>((val) {
                                                          return Expanded(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                controller
                                                                    .answerData(
                                                                        code,
                                                                        (val)
                                                                            .toInt());
                                                              },
                                                              child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 15,
                                                                    height: 15,
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    margin: EdgeInsets.only(
                                                                        right:
                                                                            10),
                                                                    decoration: BoxDecoration(
                                                                        color: HexColor(
                                                                            '#F6F9FB'),
                                                                        shape: BoxShape
                                                                            .circle,
                                                                        border: Border.all(
                                                                            color:
                                                                                Colors.black87)),
                                                                  ),
                                                                  controller.answersData[
                                                                              code] ==
                                                                          (val)
                                                                              .toInt()
                                                                      ? Container(
                                                                          width:
                                                                              8,
                                                                          height:
                                                                              8,
                                                                          margin:
                                                                              EdgeInsets.only(right: 10),
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Colors.orange,
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                        )
                                                                      : Container(
                                                                          width:
                                                                              8,
                                                                          height:
                                                                              8,
                                                                          margin:
                                                                              EdgeInsets.only(right: 10),
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                HexColor('#F6F9FB'),
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                        )
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        }).toList(),
                                            ),
                                          ],
                                        )
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
