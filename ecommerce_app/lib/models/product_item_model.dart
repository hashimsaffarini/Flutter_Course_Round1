// import 'package:ecommerce_app/core/utils/app_images.dart';

class ProductItemModel {
  final String id;
  final String image;
  final String title;
  final String description;
  final double price;
  final int rating;
  final int discount;
  bool isFavourite;
  ProductItemModel({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.rating,
    required this.discount,
    this.isFavourite = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'image': image,
      'title': title,
      'description': description,
      'price': price,
      'rating': rating,
      'discount': discount,
      'isFavourite': isFavourite,
    };
  }

  void toggleFavorite() {
    isFavourite = !isFavourite;
  }
}

List<ProductItemModel> products = [
  ProductItemModel(
    id: 'NRkPJQtlwWntRSeDIQXk',
    image:
        'https://raw.githubusercontent.com/rahul-badgujar/EShopee-Flutter-eCommerce-App/refs/heads/main/assets/images/tshirt.png',
    title: 'Women Printed Kurta',
    description: 'Neque porro quisquam est qui dolorem ipsum quia',
    price: 1500,
    rating: 4,
    discount: 50,
  ),
  ProductItemModel(
    id: 'TmHCS2gvDkxg258msNAN',
    image:
        'https://raw.githubusercontent.com/rahul-badgujar/EShopee-Flutter-eCommerce-App/refs/heads/main/assets/images/tshirt.png',
    title: 'HRX by Hrithik Roshan',
    description: 'Neque porro quisquam est qui dolorem ipsum quia',
    price: 999,
    rating: 3,
    discount: 30,
  ),
  ProductItemModel(
    id: 'HOka8AGkN9Evy4hC7k7i',
    image:
        'https://raw.githubusercontent.com/rahul-badgujar/EShopee-Flutter-eCommerce-App/refs/heads/main/assets/images/tshirt.png',
    title: 'HRX by Hrithik Roshan',
    description: 'Neque porro quisquam est qui dolorem ipsum quia',
    price: 299,
    rating: 5,
    discount: 20,
  ),
  ProductItemModel(
    id: 'ApsnxZxGIfB57w58Lt9O',
    image:
        'https://raw.githubusercontent.com/rahul-badgujar/EShopee-Flutter-eCommerce-App/refs/heads/main/assets/images/tshirt.png',
    title: 'HRX by Hrithik Roshan',
    description: 'Neque porro quisquam est qui dolorem ipsum quia',
    price: 199,
    rating: 4,
    discount: 10,
  ),
];
