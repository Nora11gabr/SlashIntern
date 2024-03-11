import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slashinternship/core/widgets/CustomLoadingWidget.dart';
import 'package:slashinternship/core/widgets/customrerrorWidget.dart';
import 'package:slashinternship/features/Product/Presentation/View/ProductDetails.dart';
import 'package:slashinternship/features/Product/Presentation/View/widgets/Productcontainer.dart';
import 'package:slashinternship/features/Product/Presentation/manager/cubit/product_cubit_cubit.dart';

class ProductGridView extends StatelessWidget {
  ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubitCubit, ProductCubitState>(
      builder: (context, state) {
        if (state is ProductCubitSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
              itemCount: state.products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 300,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20),
              itemBuilder: (context, index) {
                return ProductCard(
                  OnTap: () {
                    Navigator.pushNamed(context, ProductDetailsView.id,
                        arguments: state.products[index]);
                  },
                  productModel: state.products[index],
                );
              },
            ),
          );
        } else if (state is ProductCubitFailure) {
          return CustomErrorWidget(ErrorMessage: state.errorMsg);
        } else {
          return CustomLoadingWidget();
        }
      },
    );
  }
}
