import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget ResultCardEntrepreneur(
    {required double rating, required String img, required String title}) {
  return Container(
    width: 150,
    padding: EdgeInsets.fromLTRB(5, 2, 5, 10),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10)),
    child: Column(
      children: [
        Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(bottom: 5),
          child: IconButton(
            icon: Icon(
              Entypo.info_with_circle,
              size: 20,
              color: Colors.blue,
            ),
            onPressed: () {},
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Image.asset(
            'assets/resultBi/${img}.png',
            width: 40,
            height: 40,
            fit: BoxFit.contain,
            alignment: Alignment.center,
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        rating != 0
            ? Container(
                margin: EdgeInsets.only(bottom: 5),
                child: RatingBarIndicator(
                  rating: rating,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 20,
                  direction: Axis.horizontal,
                ),
              )
            : SizedBox(
                height: 25,
              ),
        ElevatedButton(
          child: Text('Lihat Detail'),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            shadowColor: Colors.grey,
            elevation: 1,
            padding: EdgeInsets.all(14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    ),
  );
}
