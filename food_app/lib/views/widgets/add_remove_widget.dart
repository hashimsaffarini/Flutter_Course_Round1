import 'package:flutter/material.dart';
import 'package:food_app/utils/app_colors.dart';

class AddRemoveWidegt extends StatelessWidget {
  const AddRemoveWidegt({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(26),
      ),
      child: child,
    );
  }
}
