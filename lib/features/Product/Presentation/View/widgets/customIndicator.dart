import 'package:flutter/material.dart';
import 'package:slashinternship/features/Product/Presentation/View/widgets/Productcontainer.dart';
import 'package:slashinternship/features/Product/data/Models/product_model/product_model.dart';

class CustomIndicator extends StatelessWidget {
  CustomIndicator(
      {super.key,
      required this.currentPage,
      required this.productModel,
      required this.pageController});
  final PageController pageController;
  final ProductModel productModel;

  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        productModel.productVariations![0].productVarientImages!.length,
        (index) {
          return InkWell(
            onTap: () {
              pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn);
            },
            child: Container(
              margin: EdgeInsets.all(3),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      image: NetworkImage(productModel.productVariations![0]
                              .productVarientImages![index].imagePath ??
                          ''),
                      fit: BoxFit.fill)),
            ),
          );
        },
      ),
    );
  }
}
