import 'package:flutter/material.dart';
import 'package:food_app/utils/app_colors.dart';

class AddRemoveWidegt extends StatelessWidget {
  const AddRemoveWidegt({super.key, this.child, this.onTap});
  final Widget? child;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(26),
        ),
        child: child,
      ),
    );
  }
}
