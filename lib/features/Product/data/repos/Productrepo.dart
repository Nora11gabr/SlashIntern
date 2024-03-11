import 'package:dartz/dartz.dart';
import 'package:slashinternship/core/error/failures.dart';
import 'package:slashinternship/features/Product/data/Models/product_model/product_model.dart';

abstract class ProductRepo {
  Future<Either<Failure, List<ProductModel>>> FetchProducts();
}
