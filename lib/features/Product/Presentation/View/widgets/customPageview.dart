import 'package:flutter/material.dart';
import 'package:slashinternship/features/Product/data/Models/product_model/product_model.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView(
      {super.key,
      required this.productModel,
      required this.currentPage,
      required this.pageController,
      required this.OnPageChanged});
  final ProductModel productModel;
  final int currentPage;
  final PageController pageController;
  final Function(int) OnPageChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: PageView.builder(
        itemCount:
            productModel.productVariations![0].productVarientImages!.length,
        onPageChanged: OnPageChanged,
        controller: pageController,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 300,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: NetworkImage(productModel.productVariations![0]
                                .productVarientImages![index].imagePath ??
                            ''),
                        fit: BoxFit.fill)),
              ),
            ],
          );
        },
      ),
    );
  }
}
