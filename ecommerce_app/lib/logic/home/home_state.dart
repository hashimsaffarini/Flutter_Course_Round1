import 'package:ecommerce_app/models/product_item_model.dart';

class HomeState {}

class HomeInitial extends HomeState {}

final class FavoriteChangeLoading extends HomeState {}

final class FavoriteChangeSuccsess extends HomeState {}

final class HomeDataSuccsess extends HomeState {
  final List<ProductItemModel> products;
  HomeDataSuccsess(this.products);
}

final class HomeDataLoading extends HomeState {}

final class HomeDataFailure extends HomeState {
  final String message;
  HomeDataFailure(this.message);
}
