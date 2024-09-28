import 'package:food_app/utils/app_images.dart';

class CategoryModel {
  final String image;
  final String name;

  CategoryModel({required this.image, required this.name});
}

List<CategoryModel> categoriesList = [
  CategoryModel(
    image: Assets.imagesBurger,
    name: 'Burger',
  ),
  CategoryModel(
    image: Assets.imagesPizzaSlice,
    name: 'Pizza',
  ),
  CategoryModel(
    image: Assets.imagesSandwich,
    name: 'Sandwich',
  ),
  CategoryModel(
    image: Assets.imagesTaco,
    name: 'Tacos',
  ),
];
