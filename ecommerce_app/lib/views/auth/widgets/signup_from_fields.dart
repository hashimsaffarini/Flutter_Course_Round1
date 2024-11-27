import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/views/auth/logic/signup/signup_cubit.dart';
import 'package:ecommerce_app/views/auth/widgets/custom_password_text_form_field.dart';
import 'package:ecommerce_app/views/auth/widgets/custom_text_from_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupFromFields extends StatelessWidget {
  const SignupFromFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: context.read<SignupCubit>().autovalidateMode,
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          CustomTextFromField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              } else if (!emailValidtor(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
            controller: context.read<SignupCubit>().emailController,
            hintText: 'Username or Email',
            prefixIcon: Assets.user,
          ),
          verticalSpace(34),
          CustomPasswordTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            controller: context.read<SignupCubit>().passwordController,
          ),
          verticalSpace(34),
          CustomPasswordTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your confirm password';
              }
              if (value !=
                  context.read<SignupCubit>().passwordController.text) {
                return 'Password does not match';
              }
              return null;
            },
            hintText: 'Confirm Password',
            controller: context.read<SignupCubit>().confirmPasswordController,
          ),
        ],
      ),
    );
  }
}
