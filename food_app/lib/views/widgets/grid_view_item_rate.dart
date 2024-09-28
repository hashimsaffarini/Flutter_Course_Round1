import 'package:flutter/material.dart';
import 'package:food_app/utils/app_styles.dart';
import 'package:iconsax/iconsax.dart';

class GridViewItemRate extends StatelessWidget {
  const GridViewItemRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Iconsax.star1,
          color: Color(0xffF2CF63),
        ),
        const SizedBox(width: 4),
        Text(
          '4.5',
          style: AppStyles.dmSans12Regular.copyWith(
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
