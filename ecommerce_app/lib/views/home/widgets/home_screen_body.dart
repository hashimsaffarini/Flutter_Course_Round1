import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/views/home/widgets/all_featured_rows.dart';
import 'package:ecommerce_app/views/home/widgets/custom_carousel.dart';
import 'package:ecommerce_app/views/home/widgets/list_view_featured_items.dart';
import 'package:ecommerce_app/views/home/widgets/list_view_items.dart';
import 'package:ecommerce_app/views/home/widgets/search_home_bar.dart';
import 'package:ecommerce_app/views/home/widgets/time_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
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
            verticalSpace(16),
            // SizedBox(
            //   height: 200.h,
            //   child: CarouselView(
            //     itemSnapping: true,
            //     itemExtent: MediaQuery.of(context).size.width,
            //     children: List.generate(
            //       3,
            //       (index) {
            //         return Image.asset('assets/caursel1.png');
            //       },
            //     ),
            //   ),
            // )

            const CustomCarousel(),
            verticalSpace(24),
            const TimeContainer(),
            verticalSpace(16),
            const ListViewItems(),
          ],
        ),
      ),
    );
  }
}
