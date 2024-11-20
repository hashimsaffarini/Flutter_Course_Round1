import 'package:ecommerce_app/utils/app_colors.dart';
import 'package:ecommerce_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon = false,
    this.obscureText = false,
    this.onTap,
    required this.controller,
    this.validator,
  });
  final String hintText;
  final String prefixIcon;
  final bool suffixIcon;
  final bool obscureText;
  final Function()? onTap;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: obscureText,
      cursorColor: AppColors.primaryColor,
      style: AppStyles.montserrat12Medium.copyWith(
        fontSize: 13.sp,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffF3F3F3),
        contentPadding: EdgeInsets.symmetric(vertical: 16.w),
        hintText: hintText,
        hintStyle: AppStyles.montserrat12Medium.copyWith(
          fontSize: 13.sp,
        ),
        prefixIcon: SvgPicture.asset(
          prefixIcon,
          fit: BoxFit.scaleDown,
        ),
        suffixIcon: suffixIcon
            ? GestureDetector(
                onTap: onTap,
                child: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility,
                  size: 20.r,
                  color: const Color(0xff626262),
                ),
              )
            : null,
        border: buildOutLineInputBorder(),
        enabledBorder: buildOutLineInputBorder(),
        focusedBorder: buildOutLineInputBorder(),
        errorBorder: buildOutLineInputBorder(color: Colors.red),
      ),
    );
  }
}

OutlineInputBorder buildOutLineInputBorder({Color? color}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.r),
    borderSide: BorderSide(
      color: color ?? const Color(0xffA8A8A9),
    ),
  );
}
