import 'package:flutter/material.dart';
class ProductDetailsImageHeader extends StatelessWidget {
  const ProductDetailsImageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 50,
        right: 50,
        top: 16,
      ),
      child: Image.asset(
        'assets/images/test.png',
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
