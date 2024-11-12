import 'package:ecommerce_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

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
          height: MediaQuery.of(context).size.height * 0.5,
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
        const SizedBox(
          height: 33,
        ),
        Text(
          title,
          style: AppStyles.montserrat24extraBold,
        ),
        const SizedBox(
          height: 10,
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
