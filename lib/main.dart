import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slashinternship/core/Utils/Service_locator.dart';
import 'package:slashinternship/features/Product/Presentation/View/ProductDetails.dart';
import 'package:slashinternship/features/Product/Presentation/View/ProductView.dart';
import 'package:slashinternship/features/Product/Presentation/manager/cubit/product_cubit_cubit.dart';
import 'package:slashinternship/features/Product/data/Models/product_model/product_model.dart';
import 'package:slashinternship/features/Product/data/repos/Productrepoimpl.dart';
import 'package:slashinternship/features/splash/presentation/views/SplashView.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductCubitCubit(
            getIt.get<ProductRepoImpl>(),
          )..FetchProducts(),
        )
      ],
      child: MaterialApp(
        initialRoute: SplashView.id,
        routes: {
          SplashView.id: (context) => SplashView(),
          ProductsView.id: (context) => ProductsView(),
          ProductDetailsView.id: (context) => ProductDetailsView(
                productModel:
                    ModalRoute.of(context)!.settings.arguments as ProductModel,
              ),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
