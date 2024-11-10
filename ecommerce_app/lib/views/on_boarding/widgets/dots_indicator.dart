import 'package:ecommerce_app/views/on_boarding/widgets/custom_dot_indicator.dart';
import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPage});
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Visibility(
          visible: currentPage != 0,
          maintainAnimation: true,
          maintainState: true,
          maintainSize: true,
          child: const Text(
            'Prev',
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
        Text(
          currentPage != 2 ? 'Next' : 'Get Started',
        ),
      ],
    );
  }
}
