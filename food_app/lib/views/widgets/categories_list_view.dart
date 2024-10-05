import 'package:flutter/material.dart';
import 'package:food_app/models/category_model.dart';
import 'package:food_app/views/widgets/categories_list_view_item.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key, required this.onCategorySelected});
  final Function(CategoryModel?) onCategorySelected;
  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  int currentSelectedIndex = 0;

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
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (currentSelectedIndex == index) {
                    widget.onCategorySelected(null);
                    currentSelectedIndex = -1;
                    return;
                  }
                  currentSelectedIndex = index;
                  widget.onCategorySelected(categoriesList[index]);
                });
              },
              child: CategoriesListViewItem(
                category: categoriesList[index],
                isSelected: currentSelectedIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
