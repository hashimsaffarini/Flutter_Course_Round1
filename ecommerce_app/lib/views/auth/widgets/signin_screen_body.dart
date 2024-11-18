import 'package:ecommerce_app/utils/app_styles.dart';
import 'package:ecommerce_app/utils/constants.dart';
import 'package:ecommerce_app/utils/widgets/custom_button.dart';
import 'package:ecommerce_app/views/auth/widgets/create_an_account.dart';
import 'package:ecommerce_app/views/auth/widgets/signin_form_fields.dart';
import 'package:ecommerce_app/views/auth/widgets/forget_password.dart';
import 'package:ecommerce_app/views/auth/widgets/or_continue_with.dart';
import 'package:ecommerce_app/views/auth/widgets/social_media_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SigninScreenBody extends StatelessWidget {
  const SigninScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
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
            const SigninFormFields(),
            verticalSpace(9),
            const ForgetPassword(),
            verticalSpace(52),
            CustomButton(
              title: 'Login',
              onPressed: () {},
            ),
            verticalSpace(75),
            const OrContinueWith(),
            verticalSpace(20),
            const SocialMediaButtons(),
            verticalSpace(28),
            const CreateAnAccount(),
          ],
        ),
      ),
    );
  }
}
