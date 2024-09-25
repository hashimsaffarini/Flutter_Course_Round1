import 'package:flutter/material.dart';
import 'package:food_app/utils/app_styles.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Order Your Food\nFast and Free',
          style: AppStyles.roboto14Medium.copyWith(
            fontSize: 30,
          ),
        ),
        const Spacer(),
        Image.asset(
          'assets/images/flat.png',
          width: 100,
          height: 100,
          fit: BoxFit.contain,
        )
      ],
    );
  }
}
