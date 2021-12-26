import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

Widget bar_detail(
    {required double width,
    required int flexLeft,
    required int flexRight,
    required String placeholderLeft,
    required String placeholderRight,
    required String amountFlexLeft,
    required String amountFlexRight}) {
  return Container(
    width: width,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              placeholderLeft,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              placeholderRight,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: flexLeft,
                child: Container(
                    alignment: Alignment.center,
                    height: 20,
                    decoration: BoxDecoration(
                        color: HexColor('#F57844'),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5))),
                    child: Text(amountFlexLeft))),
            Expanded(
                flex: flexRight,
                child: Container(
                    alignment: Alignment.center,
                    height: 20,
                    decoration: BoxDecoration(
                        color: HexColor('#f6b532'),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    child: Text(amountFlexRight)))
          ],
        ),
      ],
    ),
  );
}
