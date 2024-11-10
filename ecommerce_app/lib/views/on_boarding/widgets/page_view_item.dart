import 'package:ecommerce_app/views/on_boarding/widgets/custom_app_bar.dart';
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
        CustomAppBar(
          currentPage: currentPage,
        ),
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
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          textAlign: TextAlign.center,
          description,
        ),
      ],
    );
  }
}
