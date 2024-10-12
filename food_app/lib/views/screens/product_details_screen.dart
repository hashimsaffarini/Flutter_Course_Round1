import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_styles.dart';
import 'package:food_app/utils/font_wieght_helper.dart';
import 'package:food_app/views/widgets/add_to_cart_button.dart';
import 'package:food_app/views/widgets/counter_widget.dart';
import 'package:food_app/views/widgets/custom_details_screen_app_bar.dart';
import 'package:food_app/views/widgets/princing_widget.dart';
import 'package:food_app/views/widgets/product_details_image_headerd.dart';
import 'package:food_app/views/widgets/size_list_view.dart';
import 'package:food_app/views/widgets/top_description_text.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.product});
  final ProductModel product;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
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
              CustomDetailsScreenAppBar(
                product: widget.product,
              ),
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
                        TopDescriptionText(title: widget.product.title),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: [
                            PricingWidget(
                              price: widget.product.price,
                              fontSize: 28,
                            ),
                            const Spacer(),
                            CounterWidget(
                              product: widget.product,
                              isChanged: (bool isChanged) {
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Text(
                          'Choose Size :',
                          style: AppStyles.dmSans12Medium.copyWith(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SizeListView(
                          product: widget.product,
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Text(
                          'About',
                          style: AppStyles.dmSans18Bold.copyWith(
                            fontWeight: FontWieghtHelper.medium,
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Crispy seasoned chicken breast, topped with mandatory melted cheese and piled onto soft rolls with onion, avocado, lettuce, tomato and garlic mayo (if ordered). ',
                          style: AppStyles.dmSans12Regular.copyWith(
                            fontSize: 16,
                            color: const Color(0xff0D0D0D),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: AddToCartButton(
                                product: widget.product,
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Flexible(
                              child: Text(
                                'Total: \$${(widget.product.price * widget.product.quantity).toStringAsFixed(1)}',
                                style: AppStyles.dmSans12Medium.copyWith(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 32,
                        ),
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
