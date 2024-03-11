import 'package:flutter/material.dart';
import 'package:slashinternship/core/Utils/appcolor.dart';
import 'package:slashinternship/features/Product/Presentation/View/widgets/ProductGridView.dart';

class ProductsView extends StatelessWidget {
  ProductsView({super.key});
  static String id = 'ProductView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PrimaryColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: AppColors.PrimaryColor,
        title: Text(
          'Slash.',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
      body: ProductGridView(),
    );
  }
}
