import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';
import 'package:food_app/utils/app_constants.dart';
import 'package:food_app/views/widgets/categories_list_view.dart';
import 'package:food_app/views/widgets/categories_text.dart';
import 'package:food_app/views/widgets/custom_app_bar.dart';
import 'package:food_app/views/widgets/home_screen_header.dart';
import 'package:food_app/views/widgets/products_grid_view.dart';
import 'package:food_app/views/widgets/search_and_filter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<ProductModel> filteredProductsList;

  @override
  void initState() {
    super.initState();
    filteredProductsList = productsList.where((product) {
      return product.id == AppConstants.burger;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const SizedBox(height: 32),
              const HomeScreenHeader(),
              const SizedBox(height: 32),
              const SearchAndFilter(),
              const SizedBox(height: 32),
              const CategoriesText(),
              const SizedBox(height: 16),
              CategoriesListView(
                onCategorySelected: (category) {
                  setState(() {
                    if (category == null) {
                      filteredProductsList = productsList;
                      return;
                    }
                    filteredProductsList = productsList.where((product) {
                      return category.id == product.id;
                    }).toList();
                  });
                },
              ),
              const SizedBox(height: 16),
              ProductsGridView(
                products: filteredProductsList,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
