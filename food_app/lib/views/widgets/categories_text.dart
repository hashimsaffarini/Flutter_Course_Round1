import 'package:flutter/material.dart';
import 'package:food_app/utils/app_styles.dart';

class CategoriesText extends StatelessWidget {
  const CategoriesText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Categories',
      style: AppStyles.roboto14Medium.copyWith(
        fontSize: 24,
      ),
    );
  }
}
