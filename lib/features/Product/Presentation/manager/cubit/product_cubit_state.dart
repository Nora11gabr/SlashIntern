part of 'product_cubit_cubit.dart';

@immutable
sealed class ProductCubitState {}

final class ProductCubitInitial extends ProductCubitState {}

final class ProductCubitSuccess extends ProductCubitState {
  final List<ProductModel> products;

  ProductCubitSuccess(this.products);
}

final class ProductCubitLoading extends ProductCubitState {}

final class ProductCubitFailure extends ProductCubitState {
  final String errorMsg;

  ProductCubitFailure(this.errorMsg);
}
