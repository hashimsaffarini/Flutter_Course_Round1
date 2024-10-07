import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';
import 'package:food_app/views/widgets/product_details_screen_app_bar_item.dart';
import 'package:iconsax/iconsax.dart';

class CustomDetailsScreenAppBar extends StatefulWidget {
  const CustomDetailsScreenAppBar({
    super.key,
    required this.product,
  });
  final ProductModel product;
  @override
  State<CustomDetailsScreenAppBar> createState() =>
      _CustomDetailsScreenAppBarState();
}

class _CustomDetailsScreenAppBarState extends State<CustomDetailsScreenAppBar> {
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
        ProductDetailsScreenAppBarItem(
          onTap: () {
            setState(() {
              if (favoriteList.contains(widget.product)) {
                favoriteList.remove(widget.product);
              } else {
                favoriteList.add(widget.product);
              }
            });
          },
          icon: favoriteList.contains(widget.product)
              ? Iconsax.heart5
              : Iconsax.heart,
          isFav: favoriteList.contains(widget.product),
          margin: const EdgeInsets.only(right: 24),
        ),
      ],
    );
  }
}
