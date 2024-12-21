import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/views/home/widgets/custom_border_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeContainer extends StatelessWidget {
  const TimeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.all(8.w),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: const Color(0xff4392F9),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Deal of the Day',
                style: AppStyles.montserrat12Medium.copyWith(
                  fontSize: 16.sp,
                  color: Colors.white,
                ),
              ),
              verticalSpace(8),
              Row(
                children: [
                  Icon(
                    Icons.timer,
                    color: Colors.white,
                    size: 16.r,
                  ),
                  horizontalSpace(4),
                  Text(
                    '22h 55m 20s remaining',
                    style: AppStyles.montserrat14Regular.copyWith(
                      fontSize: 12.sp,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          const CustomBorderButtom(
            text: 'View All',
          )
        ],
      ),
    );
  }
}
