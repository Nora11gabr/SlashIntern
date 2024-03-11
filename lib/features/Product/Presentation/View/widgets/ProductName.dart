import 'package:flutter/material.dart';
import 'package:slashinternship/core/Utils/Customtextstyle.dart';
import 'package:slashinternship/features/Product/data/Models/product_model/product_model.dart';

class ProductName extends StatelessWidget {
  const ProductName({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Container(
            padding: EdgeInsets.only(right: 13.0),
            child: Text(productModel.name ?? '',
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyle.White600_16),
          ),
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(productModel.brands!.brandLogoImagePath),
                fit: BoxFit.fill,
              )),
        ),
      ],
    );
  }
}
