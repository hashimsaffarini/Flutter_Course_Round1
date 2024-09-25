import 'package:flutter/material.dart';
import 'package:food_app/views/widgets/categories_list_view_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        clipBehavior: Clip.none,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 12),
            child: CategoriesListViewItem(),
          );
        },
      ),
    );
  }
}
