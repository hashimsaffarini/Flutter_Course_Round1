import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/views/home/widgets/all_featured_rows.dart';
import 'package:ecommerce_app/views/home/widgets/list_view_featured_items.dart';
import 'package:ecommerce_app/views/home/widgets/search_home_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 16.h,
          ),
          child: Column(
            children: [
              const SearchHomeBar(),
              verticalSpace(16),
              const AllFeaturedRows(),
              verticalSpace(16),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: const ListViewFeaturedItems(),
        ),
      ],
    );
  }
}
