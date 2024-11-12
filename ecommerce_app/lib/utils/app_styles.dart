import 'package:ecommerce_app/utils/app_colors.dart';
import 'package:ecommerce_app/utils/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static TextStyle libreCaslonText40Bold = GoogleFonts.libreCaslonText(
    fontWeight: FontWieghtHelper.bold,
    fontSize: 40,
    color: AppColors.primaryColor,
  );
  static TextStyle montserrat14SimeBold = GoogleFonts.montserrat(
    fontWeight: FontWieghtHelper.semiBold,
    fontSize: 14,
    color: const Color(0xffA8A8A9),
  );
  static TextStyle montserrat24extraBold = GoogleFonts.montserrat(
    fontWeight: FontWieghtHelper.extraBold,
    fontSize: 24,
    color: Colors.black,
  );
  static TextStyle montserrat18semiBold = GoogleFonts.montserrat(
    fontWeight: FontWieghtHelper.semiBold,
    fontSize: 18,
    color: AppColors.primaryColor,
  );
}
