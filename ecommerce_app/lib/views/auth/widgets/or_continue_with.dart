import 'package:ecommerce_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class OrContinueWith extends StatelessWidget {
  const OrContinueWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '- OR Continue with -',
        style: AppStyles.montserrat12Medium.copyWith(
          color: const Color(0xff575757),
        ),
      ),
    );
  }
}
