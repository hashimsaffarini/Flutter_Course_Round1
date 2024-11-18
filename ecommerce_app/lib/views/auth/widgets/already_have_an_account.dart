import 'package:ecommerce_app/utils/app_colors.dart';
import 'package:ecommerce_app/utils/app_styles.dart';
import 'package:ecommerce_app/utils/constants.dart';
import 'package:flutter/material.dart';

class AlreadHaveAnAccount extends StatelessWidget {
  const AlreadHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account?',
          style: AppStyles.montserrat14SimeBold.copyWith(
            fontWeight: FontWeight.w400,
            color: const Color(0xff575757),
          ),
        ),
        horizontalSpace(5),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            'Log In',
            style: AppStyles.montserrat14SimeBold.copyWith(
              color: AppColors.primaryColor,
              decoration: TextDecoration.underline,
              decorationColor: AppColors.primaryColor,
              decorationThickness: 1.2,
            ),
          ),
        )
      ],
    );
  }
}
