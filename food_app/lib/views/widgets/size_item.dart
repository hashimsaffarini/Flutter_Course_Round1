import 'package:flutter/material.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_styles.dart';

class SizeItem extends StatelessWidget {
  const SizeItem({super.key, required this.title, required this.isSelected});
  final String title;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.primaryColor,
            child: Text(
              title,
              style: AppStyles.dmSans12Medium.copyWith(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          )
        : CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.primaryColor,
            child: CircleAvatar(
              radius: 28,
              backgroundColor: Colors.white,
              child: Text(
                title,
                style: AppStyles.dmSans12Medium.copyWith(
                  fontSize: 20,
                ),
              ),
            ),
          );
  }
}
