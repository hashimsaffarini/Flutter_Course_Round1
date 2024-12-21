import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/logic/home/home_cubit.dart';
import 'package:ecommerce_app/logic/home/home_state.dart';
import 'package:ecommerce_app/models/product_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key,
    required this.product,
  });
  final ProductItemModel product;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(4.r),
            ),
            child: Image.network(
              product.image,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(8),
                Text(
                  product.title,
                  style: AppStyles.montserrat12Medium.copyWith(
                    color: Colors.black,
                  ),
                ),
                verticalSpace(4),
                Text(
                  product.description,
                  style: AppStyles.montserrat14Regular.copyWith(
                    color: Colors.black,
                    fontSize: 10.sp,
                  ),
                ),
                verticalSpace(4),
                Text(
                  '₹ ${product.price - (product.price * (product.discount / 100))}',
                  style: AppStyles.montserrat12Medium.copyWith(
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '₹ ${product.price}',
                      style: AppStyles.montserrat12Medium.copyWith(
                        color: const Color(0xffBBBBBB),
                        decoration: TextDecoration.lineThrough,
                        decorationColor: const Color(0xffBBBBBB),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    horizontalSpace(8),
                    Text(
                      '${product.discount}% OFF',
                      style: AppStyles.montserrat14Regular.copyWith(
                        color: const Color(0xffFE735C),
                        fontSize: 10.sp,
                      ),
                    ),
                  ],
                ),
                verticalSpace(4),
                Row(
                  children: [
                    Row(
                      children: List.generate(
                        5,
                        (index) {
                          if (index <= 3) {
                            return Icon(
                              Icons.star,
                              color: const Color(0xffEDB310),
                              size: 16.sp,
                            );
                          } else {
                            return Icon(
                              Icons.star_half,
                              color: const Color(0xffA4A9B3),
                              size: 16.sp,
                            );
                          }
                        },
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          horizontalSpace(4),
                          Text(
                            '${product.rating}',
                            style: AppStyles.montserrat14Regular.copyWith(
                              color: const Color(0xffA4A9B3),
                              fontSize: 10.sp,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Center(
                              child: BlocBuilder<HomeCubit, HomeState>(
                                builder: (context, state) {
                                  return GestureDetector(
                                    onTap: () {
                                      context
                                          .read<HomeCubit>()
                                          .toggleFavorite(product);
                                    },
                                    child: Icon(
                                      product.isFavourite
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: Colors.white,
                                      size: 18.sp,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          horizontalSpace(6),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
