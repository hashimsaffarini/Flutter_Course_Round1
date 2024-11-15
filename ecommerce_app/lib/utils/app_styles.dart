import 'package:ecommerce_app/utils/app_colors.dart';
import 'package:ecommerce_app/utils/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static TextStyle libreCaslonText40Bold = GoogleFonts.libreCaslonText(
    fontWeight: FontWieghtHelper.bold,
    fontSize: 40.sp,
    color: AppColors.primaryColor,
  );
  static TextStyle montserrat14SimeBold = GoogleFonts.montserrat(
    fontWeight: FontWieghtHelper.semiBold,
    fontSize: 14.sp,
    color: const Color(0xffA8A8A9),
  );
  static TextStyle montserrat12Medium = GoogleFonts.montserrat(
    fontWeight: FontWieghtHelper.medium,
    fontSize: 12.sp,
    color: const Color(0xff676767),
  );
  static TextStyle montserrat24extraBold = GoogleFonts.montserrat(
    fontWeight: FontWieghtHelper.extraBold,
    fontSize: 24.sp,
    color: Colors.black,
  );
  static TextStyle montserrat18semiBold = GoogleFonts.montserrat(
    fontWeight: FontWieghtHelper.semiBold,
    fontSize: 18.sp,
    color: AppColors.primaryColor,
  );
  static TextStyle montserrat36Bold = GoogleFonts.montserrat(
    fontWeight: FontWieghtHelper.bold,
    fontSize: 36.sp,
    color: Colors.black,
  );
}
