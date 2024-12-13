import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({
    super.key,
    required this.title,
    required this.image,
  });
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          width: 70,
          height: 70,
        ),
        verticalSpace(4),
        Text(
          title,
          style: AppStyles.montserrat14Regular.copyWith(
            color: const Color(0xff21003D),
            fontSize: 10.sp,
          ),
        ),
      ],
    );
  }
}
