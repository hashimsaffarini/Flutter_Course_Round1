import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.currentPage});
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '${currentPage + 1}/3',
        ),
        const Spacer(),
        const Text(
          'Skip',
        ),
      ],
    );
  }
}
