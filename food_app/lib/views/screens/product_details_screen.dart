import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/views/widgets/add_remove_widget.dart';
import 'package:food_app/views/widgets/custom_details_screen_app_bar.dart';
import 'package:food_app/views/widgets/product_details_image_headerd.dart';
import 'package:food_app/views/widgets/top_description_text.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: AppColors.offWhite,
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              const CustomDetailsScreenAppBar(),
              const ProductDetailsImageHeader(),
              const SizedBox(
                height: 23,
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01,
                  ),
                  padding: const EdgeInsets.only(
                    bottom: 32,
                    left: 24,
                    right: 24,
                    top: 24,
                  ),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 1),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopDescriptionText(title: product.title),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: [
                            Text(
                              product.price.toString(),
                            ),
                            const Spacer(),
                            Container(
                              height: 40,
                              width: 118,
                              decoration: BoxDecoration(
                                color: AppColors.offWhite,
                                borderRadius: BorderRadius.circular(26),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 4,
                                ),
                                child: Row(
                                  children: [
                                    AddRemoveWidegt(
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Spacer(),
                                    Text('1'),
                                    Spacer(),
                                    AddRemoveWidegt(
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
