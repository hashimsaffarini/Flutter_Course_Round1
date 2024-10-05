import 'package:flutter/material.dart';
import 'package:food_app/views/widgets/product_details_screen_app_bar_item.dart';

class CustomDetailsScreenAppBar extends StatelessWidget {
  const CustomDetailsScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProductDetailsScreenAppBarItem(
          imagePath: 'assets/svgs/arrow.svg',
          margin: const EdgeInsets.only(left: 24),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        const Spacer(),
        const ProductDetailsScreenAppBarItem(
          imagePath: 'assets/svgs/Heart.svg',
          margin: EdgeInsets.only(right: 24),
        ),
      ],
    );
  }
}
