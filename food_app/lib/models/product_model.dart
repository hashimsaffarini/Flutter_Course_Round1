import 'package:food_app/utils/app_images.dart';

class ProductModel {
  final String image;
  final String title;
  final String details;
  final double price;

  ProductModel({
    required this.image,
    required this.title,
    required this.details,
    required this.price,
  });
}

List<ProductModel> productsList = [
  ProductModel(
    image: Assets.imagesChickenBurger,
    title: 'Chicken Burger',
    details: '200 gr chicken + cheese + Lettuce + tomato',
    price: 22.55,
  ),
  ProductModel(
    image: Assets.imagesChickenBurger,
    title: 'Chicken Burger',
    details: '200 gr chicken + cheese + Lettuce + tomato',
    price: 19.66,
  ),
  ProductModel(
    image: Assets.imagesPizzaProduct,
    title: 'Pizza',
    details: '200 gr chicken + cheese + Lettuce + tomato',
    price: 30.33,
  ),
];
