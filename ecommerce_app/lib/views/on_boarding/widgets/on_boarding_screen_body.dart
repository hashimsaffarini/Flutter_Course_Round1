import 'package:ecommerce_app/utils/app_images.dart';
import 'package:ecommerce_app/views/on_boarding/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingScreenBody extends StatelessWidget {
  const OnBoardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        PageViewItem(
          image: Assets.onBoardingImage1,
          title: 'Welcome to E-commerce App',
          description: 'Buy your favorite products with ease',
        ),
        PageViewItem(
          image: Assets.onBoardingImage2,
          title: 'Fast Delivery',
          description: 'Get your products delivered at your doorstep',
        ),
      ],
    );
  }
}
