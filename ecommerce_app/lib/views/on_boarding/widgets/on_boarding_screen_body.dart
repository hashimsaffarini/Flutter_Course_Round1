import 'package:ecommerce_app/views/on_boarding/widgets/dots_indicator.dart';
import 'package:ecommerce_app/views/on_boarding/widgets/on_boarding_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingScreenBody extends StatefulWidget {
  const OnBoardingScreenBody({super.key});

  @override
  State<OnBoardingScreenBody> createState() => _OnBoardingScreenBodyState();
}

class _OnBoardingScreenBodyState extends State<OnBoardingScreenBody> {
  late PageController _pageController;
  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();

    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            pageController: _pageController,
            currentPage: currentPage,
          ),
        ),
        DotsIndicator(
          currentPage: currentPage,
        ),
      ],
    );
  }
}
