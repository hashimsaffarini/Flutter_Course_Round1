import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildHomeAppBar() {
  return AppBar(
    leading: IconButton(
      icon: const Icon(Icons.menu),
      onPressed: () {},
    ),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          Assets.splashIcon,
          width: 30.w,
        ),
        horizontalSpace(10),
        Text(
          'Stylish',
          style: AppStyles.libreCaslonText40Bold.copyWith(
            fontSize: 18.sp,
            color: const Color(0xff4392F9),
          ),
        ),
      ],
    ),
    actions: [
      Image.asset(
        'assets/profile.png',
        width: 40.w,
      ),
      horizontalSpace(12),
    ],
  );
}
