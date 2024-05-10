import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text buildCongratulationsText() {
  return Text("Congratulations!",
      style: GoogleFonts.inter(
          fontSize: 20,
          color: Color(0xff000000),
          fontWeight: FontWeight.w700));
}