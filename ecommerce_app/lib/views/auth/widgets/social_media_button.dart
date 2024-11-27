import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({super.key, required this.image, this.onPressed});
  final String image;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54.w,
      height: 54.h,
      decoration: BoxDecoration(
        color: const Color(0xFFFBF3F5),
        borderRadius: BorderRadius.circular(100.r),
        border: Border.all(
          color: AppColors.primaryColor,
        ),
      ),
      child: Center(
        child: SvgPicture.asset(
          image,
          width: 24.w,
        ),
      ),
    );
  }
}
