import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_styles.dart';
import 'package:food_app/views/widgets/grid_view_item_rate.dart';
import 'package:food_app/views/widgets/princing_widget.dart';
import 'package:iconsax/iconsax.dart';

class ProductGirdViewItem extends StatefulWidget {
  const ProductGirdViewItem({super.key, required this.product});
  final ProductModel product;

  @override
  State<ProductGirdViewItem> createState() => _ProductGirdViewItemState();
}

class _ProductGirdViewItemState extends State<ProductGirdViewItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 8,
            offset: const Offset(0, 1),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          children: [
            const GridViewItemRate(),
            const SizedBox(height: 12),
            Image.asset(widget.product.image, height: 80),
            const SizedBox(height: 8),
            Text(
              widget.product.title,
              style: AppStyles.dmSans18Bold,
            ),
            const SizedBox(height: 4),
            Text(
              // maxLines: 2,
              // overflow: TextOverflow.ellipsis,
              widget.product.details,

              style: AppStyles.dmSans12Regular.copyWith(
                fontSize: 13,
              ),
            ),
            const Spacer(),
            Row(
              children: [
                PricingWidget(price: widget.product.price),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    // widget.product.quantity++;
                    setState(() {
                      if (favoriteList.contains(widget.product)) {
                        favoriteList.remove(widget.product);
                      } else {
                        favoriteList.add(widget.product);
                      }
                      log('Shopping List: ${favoriteList.length.toString()}');
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: favoriteList.contains(widget.product)
                        ? const Icon(
                            Iconsax.heart5,
                            size: 22,
                            color: Colors.white,
                          )
                        : const Icon(
                            Iconsax.heart4,
                            size: 22,
                            color: Colors.white,
                          ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
