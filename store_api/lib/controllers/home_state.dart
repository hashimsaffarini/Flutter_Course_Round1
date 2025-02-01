part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeLoaded extends HomeState {
  final List<ProductModel> products;
  HomeLoaded(this.products);
}

final class HomeError extends HomeState {
  final String error;
  HomeError(this.error);
}
