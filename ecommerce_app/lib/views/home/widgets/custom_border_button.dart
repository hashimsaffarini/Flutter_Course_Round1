import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBorderButtom extends StatelessWidget {
  const CustomBorderButtom({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        side: BorderSide(
          color: Colors.white,
          width: 1.w,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.r),
        ),
        backgroundColor: Colors.transparent,
      ),
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: AppStyles.montserrat14SimeBold.copyWith(
              fontSize: 12.sp,
              color: Colors.white,
            ),
          ),
          horizontalSpace(4),
          Icon(
            Icons.arrow_forward_outlined,
            color: Colors.white,
            size: 16.r,
          ),
        ],
      ),
    );
  }
}
