import 'package:flutter/material.dart';
import 'package:food_app/utils/font_wieght_helper.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static TextStyle dmSans12Regular = GoogleFonts.dmSans(
    fontSize: 12,
    fontWeight: FontWieghtHelper.regular,
  );
  static TextStyle dmSans18Bold = GoogleFonts.dmSans(
    fontSize: 18,
    fontWeight: FontWieghtHelper.bold,
  );
  static TextStyle dmSans12Medium = GoogleFonts.dmSans(
    fontSize: 12,
    fontWeight: FontWieghtHelper.medium,
  );
  static TextStyle roboto12Medium = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWieghtHelper.medium,
  );
  static TextStyle roboto14Medium = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWieghtHelper.medium,
  );
}
