import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/core/utils/shared_pref.dart';
import 'package:ecommerce_app/views/auth/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.currentPage});
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Text(
              '${currentPage + 1}',
              style: AppStyles.montserrat18semiBold.copyWith(
                color: Colors.black,
              ),
            ),
            Text(
              '/3',
              style: AppStyles.montserrat18semiBold.copyWith(
                color: const Color(0xffA0A0A1),
              ),
            ),
          ],
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            SharedPref.setBool(isUserOpenedApp, true);
            Navigator.pushReplacementNamed(context, SignupScreen.routeName);
          },
          child: Text(
            'Skip',
            style: AppStyles.montserrat18semiBold.copyWith(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

// local sql , no sql 

// hive no sql 
// sqflite sql

// shared prefrences == > map 