import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
      width: isActive ? 40 : 10,
      height: isActive ? 8 : 10,
      decoration: BoxDecoration(
        color: isActive
            ? const Color(0xff17223B)
            : const Color(0xff17223B).withOpacity(0.2),
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
