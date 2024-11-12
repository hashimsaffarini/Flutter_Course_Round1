import 'package:ecommerce_app/utils/app_styles.dart';
import 'package:ecommerce_app/utils/constants.dart';
import 'package:ecommerce_app/utils/shared_pref.dart';
import 'package:ecommerce_app/views/auth/screens/signup_screen.dart';
import 'package:ecommerce_app/views/on_boarding/widgets/custom_dot_indicator.dart';
import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required this.currentPage,
    required this.pageController,
  });
  final int currentPage;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Visibility(
          visible: currentPage != 0,
          maintainAnimation: true,
          maintainState: true,
          maintainSize: true,
          child: GestureDetector(
            onTap: () {
              pageController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
            child: Text(
              'Prev',
              style: AppStyles.montserrat18semiBold.copyWith(
                color: const Color(0xffC4C4C4),
              ),
            ),
          ),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CustomDotIndicator(
                isActive: index == currentPage,
              ),
            );
          }),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            if (currentPage != 2) {
              pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            } else {
              SharedPref.setBool(isUserOpenedApp, true);
              Navigator.pushReplacementNamed(context, SignupScreen.routeName);
            }
          },
          child: Text(
            currentPage != 2 ? 'Next' : 'Get Started',
            style: AppStyles.montserrat18semiBold,
          ),
        ),
      ],
    );
  }
}
