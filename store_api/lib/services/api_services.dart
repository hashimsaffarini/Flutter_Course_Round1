import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:store_api/models/product_model.dart';
import 'package:store_api/services/api_endpoints.dart';

class ApiServices {
  final dio = Dio(
    BaseOptions(
      baseUrl: ApiEndpoints.baseUrl, //! https://fakestoreapi.com/
    ),
  );

  Future<List<ProductModel>> getProducts() async {
    try {
      var response = await dio.get(ApiEndpoints.products);
      List<ProductModel> products = [];
      for (var item in response.data) {
        products.add(ProductModel.fromJson(item));
      }
      return products;
    } catch (e) {
      log(e.toString());
      return [];
    }
  }
}
// https://fakestoreapi.com/ + products
