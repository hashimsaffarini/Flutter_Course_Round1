import 'package:flutter/material.dart';
import 'package:food_app/views/widgets/categories_list_view.dart';
import 'package:food_app/views/widgets/categories_text.dart';
import 'package:food_app/views/widgets/custom_app_bar.dart';
import 'package:food_app/views/widgets/home_screen_header.dart';
import 'package:food_app/views/widgets/products_grid_view.dart';
import 'package:food_app/views/widgets/search_and_filter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 24, right: 24, top: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              SizedBox(height: 32),
              HomeScreenHeader(),
              SizedBox(height: 32),
              SearchAndFilter(),
              SizedBox(height: 32),
              CategoriesText(),
              SizedBox(height: 16),
              CategoriesListView(),
              SizedBox(height: 16),
              ProductsGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
