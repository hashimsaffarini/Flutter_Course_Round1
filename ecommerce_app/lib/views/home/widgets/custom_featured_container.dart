import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomFeaturedContainer extends StatelessWidget {
  const CustomFeaturedContainer({
    super.key,
    required this.title,
    required this.image,
  });
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24.h,
      width: 61.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 16,
            offset: Offset(1, 1),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: AppStyles.montserrat14Regular.copyWith(
                color: Colors.black,
                fontSize: 12.sp,
              ),
            ),
            horizontalSpace(4),
            SvgPicture.asset(
              image,
            ),
          ],
        ),
      ),
    );
  }
}
