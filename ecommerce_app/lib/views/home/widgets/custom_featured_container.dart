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
      height: 21.h,
      width: 61.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.r),
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
