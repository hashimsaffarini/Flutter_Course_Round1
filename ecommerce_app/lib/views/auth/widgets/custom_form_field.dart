import 'package:ecommerce_app/utils/app_images.dart';
import 'package:ecommerce_app/utils/constants.dart';
import 'package:ecommerce_app/views/auth/logic/signin/signin_cubit.dart';
import 'package:ecommerce_app/views/auth/widgets/custom_password_text_form_field.dart';
import 'package:ecommerce_app/views/auth/widgets/custom_text_from_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomFormFields extends StatelessWidget {
  const CustomFormFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SigninCubit>().formKey,
      child: Column(
        children: [
          CustomTextFromField(
            controller: context.read<SigninCubit>().emailController,
            hintText: 'Username or Email',
            prefixIcon: Assets.user,
          ),
          verticalSpace(34),
          const CustomPasswordTextFormField(),
        ],
      ),
    );
  }
}