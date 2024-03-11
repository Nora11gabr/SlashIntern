import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:slashinternship/core/Utils/ApiServices.dart';
import 'package:slashinternship/core/error/failures.dart';
import 'package:slashinternship/features/Product/data/Models/product_model/product_model.dart';
import 'package:slashinternship/features/Product/data/repos/Productrepo.dart';

class ProductRepoImpl implements ProductRepo {
  final ApiServices apiservice;

  ProductRepoImpl(this.apiservice);

  @override
  Future<Either<Failure, List<ProductModel>>> FetchProducts() async {
    try {
      var data = await apiservice.get(endpoint: '/product/?limit=20&page=2');
      List<ProductModel> Products = [];
      for (var item in data["data"]) {
        Products.add(ProductModel.fromJson(item));
      }
      return right(Products);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
