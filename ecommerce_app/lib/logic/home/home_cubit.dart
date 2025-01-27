import 'dart:developer';

import 'package:ecommerce_app/core/services/home_services.dart';
import 'package:ecommerce_app/logic/home/home_state.dart';
import 'package:ecommerce_app/models/product_item_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  HomeServicesImpl homeServices = HomeServicesImpl();
  List<ProductItemModel> favoriteProducts = [];

  void toggleFavorite(ProductItemModel product) async {
    emit(FavoriteChangeLoading());

    bool isFound = favoriteProducts.any((element) => element.id == product.id);
    if (isFound) {
      log('remove');
      await homeServices.removeProductFromFavorite(product);
      favoriteProducts.removeWhere((element) => element.id == product.id);
    } else {
      log('add');
      await homeServices.addProductToFavorite(product);
      favoriteProducts.add(product);
    }
    log(favoriteProducts.toString());
    emit(FavoriteChangeSuccsess());
  }

  Future<void> fetchDataWhenOpenApp() async {
    favoriteProducts = await homeServices.getFavoriteProducts();
  }

  bool isFavorite(ProductItemModel product) {
    bool isFound = favoriteProducts.any((element) => element.id == product.id);
    if (isFound) {
      log('isFavorite');
    } else {
      log('isNotFavorite');
    }
    return isFound;
  }

  Future<void> fetchHomeData() async {
    emit(HomeDataLoading());
    // await Future.delayed(const Duration(seconds: 10));
    try {
      var data = await homeServices.getHomeData();
      emit(HomeDataSuccsess(data));
    } catch (e) {
      emit(HomeDataFailure(e.toString()));
    }
  }
}
