import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/views/home/widgets/custom_border_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarousel extends StatefulWidget {
  const CustomCarousel({
    super.key,
  });

  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  int currentIndex = 0;

  Widget buildDot(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      width: currentIndex == index ? 10.w : 8.w,
      height: currentIndex == index ? 10.w : 8.w,
      decoration: BoxDecoration(
        color: currentIndex == index
            ? const Color(0xffFFA3B3)
            : const Color(0xffDEDBDB),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
            height: 200.h,
            autoPlay: true,
            viewportFraction: 1,
            autoPlayInterval: const Duration(seconds: 3),
          ),
          items: List.generate(3, (index) {
            return Stack(
              children: [
                Image.asset('assets/caursel1.png'),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '50-40% OFF',
                        style: AppStyles.montserrat36Bold.copyWith(
                          fontSize: 20.sp,
                          color: Colors.white,
                        ),
                      ),
                      verticalSpace(8),
                      Text(
                        'Now in (product)',
                        style: AppStyles.montserrat14Regular.copyWith(
                          fontSize: 12.sp,
                          color: Colors.white,
                        ),
                      ),
                      verticalSpace(4),
                      Text(
                        'All colors',
                        style: AppStyles.montserrat14Regular.copyWith(
                          fontSize: 12.sp,
                          color: Colors.white,
                        ),
                      ),
                      verticalSpace(12),
                      const CustomBorderButtom(
                        text: 'Shop Now',
                      ),
                    ],
                  ),
                )
              ],
            );
          }),
        ),
        verticalSpace(16),
        SizedBox(
          height: 10.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) => buildDot(index)),
          ),
        ),
      ],
    );
  }
}
