import 'package:ecommerce_app/utils/app_styles.dart';
import 'package:ecommerce_app/utils/constants.dart';
import 'package:ecommerce_app/views/auth/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SigninScreenBody extends StatelessWidget {
  const SigninScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(19),
          Text(
            'Welcome\nBack!',
            style: AppStyles.montserrat36Bold,
          ),
          verticalSpace(33),
          const CustomFormFields(),
        ],
      ),
    );
  }
}