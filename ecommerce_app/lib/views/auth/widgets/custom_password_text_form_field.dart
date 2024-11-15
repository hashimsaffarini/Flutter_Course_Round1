import 'package:ecommerce_app/utils/app_images.dart';
import 'package:ecommerce_app/views/auth/logic/signin/signin_cubit.dart';
import 'package:ecommerce_app/views/auth/widgets/custom_text_from_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  const CustomPasswordTextFormField({super.key});
  @override
  State<CustomPasswordTextFormField> createState() =>
      _CustomPasswordTextFormFieldState();
}

class _CustomPasswordTextFormFieldState
    extends State<CustomPasswordTextFormField> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFromField(
      controller: context.read<SigninCubit>().passwordController,
      obscureText: isObscure,
      onTap: () {
        setState(() {
          isObscure = !isObscure;
        });
      },
      hintText: 'Password',
      prefixIcon: Assets.lock,
      suffixIcon: true,
    );
  }
}
