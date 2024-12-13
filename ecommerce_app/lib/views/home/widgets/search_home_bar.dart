import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchHomeBar extends StatelessWidget {
  const SearchHomeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search any Product..',
        hintStyle: AppStyles.montserrat14Regular.copyWith(
          color: const Color(0xffBBBBBB),
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: Color(0xffBBBBBB),
        ),
        suffixIcon: const Icon(
          Icons.mic,
          color: Color(0xffBBBBBB),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 15.h,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(6.r),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(6.r),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(6.r),
          ),
        ),
      ),
    );
  }
}
