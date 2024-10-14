import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_styles.dart';

class FavoriteListViewItem extends StatefulWidget {
  const FavoriteListViewItem({
    super.key,
    required this.product,
    required this.isChanged,
  });
  final ProductModel product;
  final Function(bool isChanged) isChanged;
  @override
  State<FavoriteListViewItem> createState() => _FavoriteListViewItemState();
}

class _FavoriteListViewItemState extends State<FavoriteListViewItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.primaryColor,
        ),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Image.asset(
            widget.product.image,
            height: 80,
            width: 80,
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.product.title,
                style: AppStyles.dmSans12Medium.copyWith(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                '\$${widget.product.price}',
                style: AppStyles.dmSans12Medium.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: 18,
                ),
              )
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              setState(() {
                favoriteList.remove(widget.product);
                widget.isChanged(true);
              });
            },
            icon: const Icon(
              Icons.delete,
              color: AppColors.primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
