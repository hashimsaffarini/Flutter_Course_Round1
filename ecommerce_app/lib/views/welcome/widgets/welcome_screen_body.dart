import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/views/home/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreenBody extends StatelessWidget {
  const WelcomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.asset(
            'assets/welcome_image.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 170.h,
          left: 0,
          right: 0,
          child: Text(
            textAlign: TextAlign.center,
            'You want\nAuthentic, here\nyou go!',
            style: AppStyles.montserrat18semiBold.copyWith(
              fontSize: 34.sp,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: 133.h,
          left: 0,
          right: 0,
          child: Text(
            textAlign: TextAlign.center,
            'Find it here, buy it now!',
            style: AppStyles.montserrat14Regular,
          ),
        ),
        Positioned(
          bottom: 34.h,
          left: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 55.w),
            child: CustomButton(
              title: 'Get Started',
              onPressed: () {
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              },
            ),
          ),
        ),
      ],
    );
  }
}
