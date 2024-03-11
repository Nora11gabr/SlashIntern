import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:slashinternship/core/Utils/ApiServices.dart';
import 'package:slashinternship/features/Product/data/repos/Productrepoimpl.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiServices>(
    ApiServices(
      Dio(),
    ),
  );
  getIt.registerSingleton<ProductRepoImpl>(
    ProductRepoImpl(
      getIt.get<ApiServices>(),
    ),
  );
}
