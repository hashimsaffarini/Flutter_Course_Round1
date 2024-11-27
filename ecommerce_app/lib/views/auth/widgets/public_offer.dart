import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class PublicOffer extends StatelessWidget {
  const PublicOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'By clicking the ',
            style: AppStyles.montserrat12Medium.copyWith(
              color: const Color(0xFF676767),
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: 'Register',
            style: AppStyles.montserrat12Medium.copyWith(
              color: const Color(0xFFFF4B26),
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: ' button, you agree to the public offer',
            style: AppStyles.montserrat12Medium.copyWith(
              color: const Color(0xFF676767),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
