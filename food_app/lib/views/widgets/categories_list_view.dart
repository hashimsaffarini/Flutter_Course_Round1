import 'package:flutter/material.dart';
import 'package:food_app/models/category_model.dart';
import 'package:food_app/views/widgets/categories_list_view_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        clipBehavior: Clip.none,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: CategoriesListViewItem(
              category: categoriesList[index],
            ),
          );
        },
      ),
    );
  }
}
