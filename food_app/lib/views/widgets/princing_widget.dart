import 'package:flutter/material.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_styles.dart';

class PricingWidget extends StatelessWidget {
  const PricingWidget({
    super.key,
    required this.price,
    this.fontSize = 20,
  });

  final double price;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '\$ ${price.toInt()}.',
            style: AppStyles.dmSans18Bold.copyWith(
              color: AppColors.primaryColor,
              fontSize: fontSize,
            ),
          ),
          TextSpan(
            text: price.toString().split('.')[1],
            style: AppStyles.dmSans12Medium.copyWith(
              fontSize: fontSize - 2,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
