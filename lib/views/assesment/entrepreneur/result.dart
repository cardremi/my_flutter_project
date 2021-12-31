import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:skillana_flutter/controllers/assesment/entrepreneur/result.dart';
import 'package:skillana_flutter/routes/routes.dart';
import 'package:skillana_flutter/widgets/entrepreneur/result_card.dart';

class ResultEntrepreneur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: _body(context),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Hasil Tes Entrepreneur',
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
    return GetBuilder<ResultEntrepreneurController>(
        builder: (controller) => SingleChildScrollView(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(color: HexColor('#f2f3f9')),
                  child:
                      controller.isLoading && controller.resultData.length == 0
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
                          : Center(
                              child: Wrap(
                                spacing: 20,
                                runSpacing: 20,
                                children: [
                                  for (var item in controller.resultData)
                                    ResultCardEntrepreneur(
                                        rating: item['rating'],
                                        img: item['img'],
                                        title: item['title'])
                                ],
                              ),
                            )),
            ));
  }
}
