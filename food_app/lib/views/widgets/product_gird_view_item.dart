import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/models/product_model.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_styles.dart';
import 'package:food_app/views/widgets/grid_view_item_rate.dart';

class ProductGirdViewItem extends StatelessWidget {
  const ProductGirdViewItem({super.key, required this.product});
  final ProductModel product;

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
            Image.asset(product.image, height: 80),
            const SizedBox(height: 8),
            Text(
              product.title,
              style: AppStyles.dmSans18Bold,
            ),
            const SizedBox(height: 4),
            Text(
              // maxLines: 2,
              // overflow: TextOverflow.ellipsis,
              product.details,

              style: AppStyles.dmSans12Regular.copyWith(
                fontSize: 13,
              ),
            ),
            const Spacer(),
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '\$ ${product.price.toInt()}.',
                        style: AppStyles.dmSans18Bold.copyWith(
                            color: AppColors.primaryColor, fontSize: 20),
                      ),
                      TextSpan(
                        text: product.price.toString().split('.')[1],
                        style: AppStyles.dmSans12Medium.copyWith(
                          fontSize: 18,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: SvgPicture.asset(
                    'assets/svgs/plus.svg',
                    height: 16,
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
