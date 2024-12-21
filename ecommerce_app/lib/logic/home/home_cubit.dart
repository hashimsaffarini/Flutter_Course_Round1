import 'package:ecommerce_app/logic/home/home_state.dart';
import 'package:ecommerce_app/models/product_item_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  void toggleFavorite(ProductItemModel product) {
    product.toggleFavorite();
    emit(ChangeFavorite()); // This will rebuild the UI
  }
}
