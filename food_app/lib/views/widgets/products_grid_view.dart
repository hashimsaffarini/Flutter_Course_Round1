import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';
import 'package:food_app/views/screens/product_details_screen.dart';
import 'package:food_app/views/widgets/product_gird_view_item.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key, required this.products});
  final List<ProductModel> products;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: products.length,
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
                  return  ProductDetailsScreen(
                    product: products[index],
                  );
                },
              ),
            );
          },
          child: ProductGirdViewItem(
            product: products[index],
          ),
        );
      },
    );
  }
}
