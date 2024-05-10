import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildCongratulationsOkayButton({required context}) {
  return SizedBox(
      height: 46,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffDB3022),
              foregroundColor: Color(0xffFFFFFF)),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("OKAY",
              style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w600))));
}