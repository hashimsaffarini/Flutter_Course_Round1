import 'package:ecommerce_app/core/services/firestore_services.dart';
import 'package:ecommerce_app/core/utils/api_endpoints.dart';
import 'package:ecommerce_app/models/product_item_model.dart';

abstract class HomeServices {
  Future<List<ProductItemModel>> getHomeData();

  Future<void> addProductToFavorite(ProductItemModel product);

  Future<void> removeProductFromFavorite(ProductItemModel product);

  Future<List<ProductItemModel>> getFavoriteProducts();
}

class HomeServicesImpl extends HomeServices {
  FirestoreService firestoreService = FirestoreService.instance;
  @override
  Future<List<ProductItemModel>> getHomeData() async {
    var data = await firestoreService.getCollection(
      path: ApiEndpoints.getProducts(),
      builder: (data, documentId) {
        return ProductItemModel.fromMap(data);
      },
    );
    return data;
  }

  @override
  Future<void> addProductToFavorite(ProductItemModel product) async {
    await firestoreService.setData(
      path: ApiEndpoints.addToFavorites(product.id),
      data: product.toMap(),
    );
  }

  @override
  Future<void> removeProductFromFavorite(ProductItemModel product) async {
    await firestoreService.deleteData(
      path: ApiEndpoints.addToFavorites(product.id),
    );
  }

  @override
  Future<List<ProductItemModel>> getFavoriteProducts() async {
    List<ProductItemModel> data = await firestoreService.getCollection(
      path: ApiEndpoints.getFavorites(),
      builder: (data, documentId) {
        return ProductItemModel.fromMap(data);
      },
    );
    return data;
  }
}
