import 'package:ecommerce_app/utils/app_styles.dart';
import 'package:ecommerce_app/utils/constants.dart';
import 'package:ecommerce_app/utils/widgets/custom_button.dart';
import 'package:ecommerce_app/views/auth/logic/signup/signup_cubit.dart';
import 'package:ecommerce_app/views/auth/widgets/already_have_an_account.dart';
import 'package:ecommerce_app/views/auth/widgets/or_continue_with.dart';
import 'package:ecommerce_app/views/auth/widgets/public_offer.dart';
import 'package:ecommerce_app/views/auth/widgets/signup_from_fields.dart';
import 'package:ecommerce_app/views/auth/widgets/social_media_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreenBody extends StatelessWidget {
  const SignupScreenBody({super.key});

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
              'Create an \naccount',
              style: AppStyles.montserrat36Bold,
            ),
            verticalSpace(33),
            const SignupFromFields(),
            verticalSpace(19),
            const PublicOffer(),
            verticalSpace(38),
            CustomButton(
              title: 'Create Account',
              onPressed: () {
                if (context
                    .read<SignupCubit>()
                    .formKey
                    .currentState!
                    .validate()) {
                  context.read<SignupCubit>().formKey.currentState!.save();
                  context.read<SignupCubit>().signup();
                } else {
                  context.read<SignupCubit>().autovalidateMode =
                      AutovalidateMode.always;
                }
              },
            ),
            verticalSpace(40),
            const OrContinueWith(),
            verticalSpace(20),
            const SocialMediaButtons(),
            verticalSpace(28),
            const AlreadHaveAnAccount(),
            // const CustomFormFields(),
            // verticalSpace(9),
            // const ForgetPassword(),
            // verticalSpace(52),
            // CustomButton(
            //   title: 'Login',
            //   onPressed: () {},
            // ),
            // verticalSpace(75),
            // const OrContinueWith(),
            // verticalSpace(20),
            // const SocialMediaButtons(),
            // verticalSpace(28),
            // const CreateAnAccount(),
          ],
        ),
      ),
    );
  }
}
