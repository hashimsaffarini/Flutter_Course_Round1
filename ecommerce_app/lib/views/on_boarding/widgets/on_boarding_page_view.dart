import 'package:ecommerce_app/utils/app_images.dart';
import 'package:ecommerce_app/views/on_boarding/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.pageController,
    required this.currentPage,
  });
  final PageController pageController;
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          currentPage: currentPage,
          image: Assets.onBoardingImage1,
          title: 'Choose Products',
          description:
              'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
        ),
        PageViewItem(
          currentPage: currentPage,
          image: Assets.onBoardingImage2,
          title: 'Make Payment',
          description:
              'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
        ),
        PageViewItem(
          currentPage: currentPage,
          image: Assets.onBoardingImage3,
          title: 'Get Your Order',
          description:
              'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
        ),
      ],
    );
  }
}
