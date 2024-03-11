import 'package:flutter/material.dart';
import 'package:slashinternship/core/Utils/Customtextstyle.dart';
import 'package:slashinternship/core/Utils/appcolor.dart';
import 'package:slashinternship/features/Product/Presentation/View/ProductDetails.dart';
import 'package:slashinternship/features/Product/Presentation/View/widgets/ProducPrice.dart';
import 'package:slashinternship/features/Product/Presentation/View/widgets/ProductName.dart';
import 'package:slashinternship/features/Product/data/Models/product_model/product_model.dart';

class ProductCard extends StatelessWidget {
  ProductCard({super.key, required this.productModel, required this.OnTap});
  final ProductModel productModel;
  final void Function() OnTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        width: MediaQuery.sizeOf(context).width * .5,
        height: 250,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: Image.network(
                productModel.productVariations![0].productVarientImages![0]
                        .imagePath ??
                    '',
                fit: BoxFit.fill,
                height: 160,
                width: 170,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * .5,
              child: Column(
                children: [
                  ProductName(
                    productModel: productModel,
                  ),
                  ProductPrice(
                    productModel: productModel,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
