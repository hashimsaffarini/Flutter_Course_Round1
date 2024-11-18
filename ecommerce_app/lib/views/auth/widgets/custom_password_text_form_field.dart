import 'package:ecommerce_app/utils/app_images.dart';
import 'package:ecommerce_app/views/auth/widgets/custom_text_from_field.dart';
import 'package:flutter/material.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  const CustomPasswordTextFormField({
    super.key,
    required this.controller,
    this.hintText = 'Password',
  });
  final TextEditingController controller;
  final String hintText;
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
      controller: widget.controller,
      obscureText: isObscure,
      onTap: () {
        setState(() {
          isObscure = !isObscure;
        });
      },
      hintText: widget.hintText,
      prefixIcon: Assets.lock,
      suffixIcon: true,
    );
  }
}
