import 'package:flutter/material.dart';
import 'package:slashinternship/core/Utils/Customtextstyle.dart';
import 'package:slashinternship/core/Utils/appcolor.dart';
import 'package:slashinternship/features/Product/data/Models/product_model/product_model.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'EGP ${productModel.productVariations![0].price} ',
          style: CustomTextStyle.White600_16.copyWith(
              fontWeight: FontWeight.normal),
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_outline_outlined,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart_sharp,
                  color: AppColors.Grey,
                ))
          ],
        )
      ],
    );
  }
}
