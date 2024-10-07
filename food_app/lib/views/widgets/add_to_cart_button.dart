import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_styles.dart';

class AddToCartButton extends StatefulWidget {
  const AddToCartButton({super.key, required this.product});
  final ProductModel product;

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton> {
  @override
  Widget build(BuildContext context) {
    return cartList.contains(widget.product)
        ? ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              minimumSize: const Size(double.infinity, 61),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: null,
            child: Text(
              'Added to Cart',
              style: AppStyles.dmSans18Bold.copyWith(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          )
        : ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              minimumSize: const Size(double.infinity, 61),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: () {
              setState(() {
                cartList.add(widget.product);
              });
            },
            child: Text(
              'Add to Cart',
              style: AppStyles.dmSans18Bold.copyWith(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          );
  }
}
