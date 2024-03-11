import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import 'package:slashinternship/features/Product/data/Models/product_model/product_model.dart';
import 'package:slashinternship/features/Product/data/repos/Productrepo.dart';

part 'product_cubit_state.dart';

class ProductCubitCubit extends Cubit<ProductCubitState> {
  ProductCubitCubit(this.productRepo) : super(ProductCubitInitial());
  final ProductRepo productRepo;
  Future<void> FetchProducts() async {
    emit(ProductCubitLoading());
    var result = await productRepo.FetchProducts();
    result.fold(
      (Failure) {
        emit(ProductCubitFailure(Failure.errMsg));
      },
      (products) => {
        emit(
          ProductCubitSuccess(products),
        )
      },
    );
  }
}
