import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/views/home/widgets/custom_featured_container.dart';
import 'package:flutter/material.dart';

class AllFeaturedRows extends StatelessWidget {
  const AllFeaturedRows({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Featured',
          style: AppStyles.montserrat18semiBold.copyWith(
            color: Colors.black,
          ),
        ),
        const Spacer(),
        const CustomFeaturedContainer(
          title: 'Sort',
          image: 'assets/drop_down.svg',
        ),
        horizontalSpace(10),
        const CustomFeaturedContainer(
          title: 'Filter',
          image: 'assets/filter.svg',
        ),
      ],
    );
  }
}
