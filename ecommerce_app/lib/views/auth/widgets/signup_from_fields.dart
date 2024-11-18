import 'package:ecommerce_app/utils/app_images.dart';
import 'package:ecommerce_app/utils/constants.dart';
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
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          CustomTextFromField(
            controller: context.read<SignupCubit>().emailController,
            hintText: 'Username or Email',
            prefixIcon: Assets.user,
          ),
          verticalSpace(34),
          CustomPasswordTextFormField(
            controller: context.read<SignupCubit>().passwordController,
          ),
          verticalSpace(34),
          CustomPasswordTextFormField(
            hintText: 'Confirm Password',
            controller: context.read<SignupCubit>().confirmPasswordController,
          ),
        ],
      ),
    );
  }
}
