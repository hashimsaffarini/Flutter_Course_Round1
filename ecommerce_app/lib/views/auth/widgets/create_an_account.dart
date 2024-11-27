import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/views/auth/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class CreateAnAccount extends StatelessWidget {
  const CreateAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Create an account?',
          style: AppStyles.montserrat14SimeBold.copyWith(
            fontWeight: FontWeight.w400,
            color: const Color(0xff575757),
          ),
        ),
        horizontalSpace(5),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignupScreen.routeName);
          },
          child: Text(
            'Sign Up',
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
