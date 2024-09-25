import 'package:flutter/material.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_styles.dart';

class CategoriesListViewItem extends StatelessWidget {
  const CategoriesListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(
          color: AppColors.primaryColor,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 12),
          Image.asset('assets/images/burger.png'),
          const SizedBox(width: 16),
          Text(
            'Sandwich',
            style: AppStyles.dmSans18Bold,
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
