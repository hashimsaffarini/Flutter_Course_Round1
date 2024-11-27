import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/views/auth/logic/signin/signin_cubit.dart';
import 'package:ecommerce_app/views/auth/widgets/custom_password_text_form_field.dart';
import 'package:ecommerce_app/views/auth/widgets/custom_text_from_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninFormFields extends StatelessWidget {
  const SigninFormFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SigninCubit>().formKey,
      autovalidateMode: context.read<SigninCubit>().autovalidateMode,
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
            controller: context.read<SigninCubit>().emailController,
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
            controller: context.read<SigninCubit>().passwordController,
          ),
        ],
      ),
    );
  }
}
