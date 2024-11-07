import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });
  final String title, description;
  final String image;
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
