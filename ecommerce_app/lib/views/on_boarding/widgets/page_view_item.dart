import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.currentPage,
  });
  final String title, description;
  final String image;
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5.h,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  image,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 33.h,
        ),
        Text(
          title,
          style: AppStyles.montserrat24extraBold,
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          textAlign: TextAlign.center,
          description,
          style: AppStyles.montserrat14SimeBold,
        ),
      ],
    );
  }
}
