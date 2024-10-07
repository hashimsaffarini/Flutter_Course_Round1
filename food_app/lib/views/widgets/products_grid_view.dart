import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';
import 'package:food_app/views/screens/product_details_screen.dart';
import 'package:food_app/views/widgets/product_gird_view_item.dart';

class ProductsGridView extends StatefulWidget {
  const ProductsGridView({super.key, required this.products});
  final List<ProductModel> products;

  @override
  State<ProductsGridView> createState() => _ProductsGridViewState();
}

class _ProductsGridViewState extends State<ProductsGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 155 / 207,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ProductDetailsScreen(
                    product: widget.products[index],
                  );
                },
              ),
            ).then((value) {
              setState(() {});
            });
          },
          child: ProductGirdViewItem(
            product: widget.products[index],
          ),
        );
      },
    );
  }
}
