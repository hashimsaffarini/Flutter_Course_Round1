import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_styles.dart';
import 'package:food_app/views/widgets/add_remove_widget.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({
    super.key,
    required this.product,
  });
  final ProductModel product;
  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 118,
      decoration: BoxDecoration(
        color: AppColors.offWhite,
        borderRadius: BorderRadius.circular(26),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 4,
        ),
        child: Row(
          children: [
            AddRemoveWidegt(
              onTap: () {
                setState(() {
                  widget.product.decrementQuantity();
                });
              },
              child: const Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            Text(
              widget.product.quantity.toString(),
              style: AppStyles.dmSans12Regular.copyWith(
                fontSize: 28,
              ),
            ),
            const Spacer(),
            AddRemoveWidegt(
              onTap: () {
                setState(() {
                  widget.product.incrementQuantity();
                });
              },
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
