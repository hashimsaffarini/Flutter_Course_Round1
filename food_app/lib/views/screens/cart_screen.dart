import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_styles.dart';
import 'package:food_app/views/screens/product_details_screen.dart';
import 'package:food_app/views/widgets/cart_list_view_item.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    double subTotal = cartList.fold(
      0,
      (previousValue, element) =>
          previousValue + (element.price * element.quantity),
    );
    double shipping = 4.00;
    return SafeArea(
      child: Column(
        children: [
          Text(
            'Cart',
            style: AppStyles.dmSans12Regular.copyWith(
              fontSize: 36,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cartList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ProductDetailsScreen(
                            product: cartList[index],
                          );
                        },
                      ),
                    ).then((value) {
                      setState(() {});
                    });
                  },
                  child: CartListViewItem(
                    product: cartList[index],
                    onChange: (isChanged) {
                      setState(() {});
                    },
                    onRemove: () {
                      setState(() {
                        cartList.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: AnimatedContainer(
              padding: const EdgeInsets.only(
                top: 16,
                left: 24,
                right: 24,
              ),
              duration: const Duration(milliseconds: 300),
              height: isExpanded ? 250 : 100,
              curve: Curves.easeInOut,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, -2),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 4,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal',
                          style: AppStyles.dmSans12Medium.copyWith(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          '\$${subTotal.toStringAsFixed(2)}',
                          style: AppStyles.dmSans12Medium.copyWith(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shipping',
                          style: AppStyles.dmSans12Medium.copyWith(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          '%$shipping',
                          style: AppStyles.dmSans12Medium.copyWith(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: List.generate(
                        20,
                        (index) {
                          return Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                right: index != 19 ? 4 : 0,
                                left: index != 0 ? 4 : 0,
                              ),
                              child: const Divider(
                                thickness: 1.2,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Amount',
                          style: AppStyles.dmSans12Medium.copyWith(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          '\$${(subTotal - (subTotal * (shipping / 100))).toStringAsFixed(2)}',
                          style: AppStyles.dmSans12Medium.copyWith(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          minimumSize: const Size(double.infinity, 61),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Checkout',
                          style: AppStyles.dmSans12Medium.copyWith(
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),
                    Icon(
                      isExpanded
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up,
                      size: 28,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
