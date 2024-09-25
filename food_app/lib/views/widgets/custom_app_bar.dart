import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_styles.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/svgs/Location.svg',
          height: 24,
        ),
        const SizedBox(width: 8),
        Text(
          'Palestine, Tulkarm',
          style: AppStyles.roboto14Medium.copyWith(
            fontSize: 16,
          ),
        ),
        const SizedBox(width: 8),
        const Icon(
          Iconsax.arrow_down_1,
          color: AppColors.primaryColor,
        )
      ],
    );
  }
}
