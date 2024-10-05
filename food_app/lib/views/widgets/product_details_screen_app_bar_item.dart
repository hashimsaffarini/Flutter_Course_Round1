import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductDetailsScreenAppBarItem extends StatelessWidget {
  const ProductDetailsScreenAppBarItem({
    super.key,
    required this.imagePath,
    this.margin,
    this.onTap,
  });
  final String imagePath;
  final EdgeInsetsGeometry? margin;
  final void Function()? onTap;
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
        child: SvgPicture.asset(
          imagePath,
          height: 24,
        ),
      ),
    );
  }
}
