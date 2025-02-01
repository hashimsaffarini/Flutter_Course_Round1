import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:store_api/models/product_model.dart';

import '../services/api_services.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  final ApiServices apiServices = ApiServices();
  // int x = 2;
  Future<void> fetchData() async {
    emit(HomeLoading());
    try {
      log('fetching data');
      List<ProductModel> products = await apiServices.getProducts();
      emit(HomeLoaded(products));
    } catch (e) {
      emit(HomeError(e.toString()));
    }
  }
}
