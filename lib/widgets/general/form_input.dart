import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

Widget formInput(
    {required String title,
    String? initialValue,
    required String placeholder,
    FocusNode? focusNode,
    required controller,
    required TextInputType inputType,
    required TextInputAction inputAction,
    bool secureText = false,
    bool enabled = true,
    required validator,
    String? colorBackground}) {
  return Column(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      SizedBox(height: 8),
      TextFormField(
        initialValue: initialValue,
        focusNode: focusNode,
        controller: controller,
        onChanged: (text) => {},
        keyboardType: inputType,
        textInputAction: inputAction,
        obscureText: secureText,
        enabled: enabled,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          hintText: placeholder,
          fillColor: HexColor(colorBackground.toString()),
          filled: true,
          hintStyle: GoogleFonts.poppins(
            fontSize: 14,
            color: Colors.black12,
            fontWeight: FontWeight.w300,
          ),
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
      ),
    ],
  );
}
