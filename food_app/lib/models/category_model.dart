import 'package:food_app/utils/app_constants.dart';
import 'package:food_app/utils/app_images.dart';

class CategoryModel {
  final String image;
  final String name;
  final String id;

  CategoryModel({required this.image, required this.name, required this.id});
}

List<CategoryModel> categoriesList = [
  CategoryModel(
    image: Assets.imagesBurger,
    name: 'Burger',
    id: AppConstants.burger,
  ),
  CategoryModel(
    image: Assets.imagesPizzaSlice,
    name: 'Pizza',
    id: AppConstants.pizza,
  ),
  CategoryModel(
    image: Assets.imagesSandwich,
    name: 'Sandwich',
    id: AppConstants.sandwich,
  ),
  CategoryModel(
    image: Assets.imagesChicken,
    name: 'Chicken',
    id: AppConstants.chicken,
  ),
  CategoryModel(
    image: Assets.imagesDrinkCap,
    name: 'Drinks',
    id: AppConstants.drinks,
  ),
];
