import 'package:flutter/material.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_styles.dart';
import 'package:food_app/utils/font_wieght_helper.dart';
import 'package:iconsax/iconsax.dart';

class TopDescriptionText extends StatelessWidget {
  const TopDescriptionText({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyles.dmSans18Bold.copyWith(fontSize: 24),
        ),
        const Spacer(),
        const Icon(
          Iconsax.star1,
          color: AppColors.yellow,
          size: 34,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          '4.8',
          style: AppStyles.dmSans18Bold
              .copyWith(fontWeight: FontWieghtHelper.regular),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          '(41 Reviews)',
          style: AppStyles.dmSans12Regular,
        )
      ],
    );
  }
}
