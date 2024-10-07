import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/utils/app_colors.dart';

class ProductDetailsScreenAppBarItem extends StatelessWidget {
  const ProductDetailsScreenAppBarItem({
    super.key,
    this.imagePath,
    this.margin,
    this.onTap,
    this.icon,
    this.isFav = false,
  });
  final String? imagePath;
  final IconData? icon;
  final EdgeInsetsGeometry? margin;
  final void Function()? onTap;
  final bool isFav;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color(0xff0D0D0D),
            width: 1.4,
          ),
        ),
        child: imagePath != null
            ? SvgPicture.asset(
                imagePath!,
                height: 24,
              )
            : Icon(
                icon,
                size: 24,
                color: isFav ? AppColors.primaryColor : Colors.black,
              ),
      ),
    );
  }
}
