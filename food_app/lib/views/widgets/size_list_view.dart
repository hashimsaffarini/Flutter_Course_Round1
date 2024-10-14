import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';
import 'package:food_app/views/widgets/size_item.dart';

class SizeListView extends StatefulWidget {
  const SizeListView({
    super.key,
    required this.product,
  });
  final ProductModel product;
  @override
  State<SizeListView> createState() => _SizeListViewState();
}

class _SizeListViewState extends State<SizeListView> {
  late int selectedSize = widget.product.size.index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ProductSize.values.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              right: 12,
            ),
            child: GestureDetector(
              onTap: () {
                widget.product.size = ProductSize.values[index];
                setState(() {
                  selectedSize = index;
                });
              },
              child: SizeItem(
                title: ProductSize.values[index].toString().split('.').last,
                isSelected: selectedSize == index,
              ),
            ),
          );
        },
      ),
    );
  }
}


// ProductSize.S