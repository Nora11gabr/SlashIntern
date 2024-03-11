import 'package:flutter/material.dart';
import 'package:slashinternship/core/Utils/Customtextstyle.dart';
import 'package:slashinternship/features/Product/Presentation/View/widgets/CustomBtn.dart';
import 'package:slashinternship/features/Product/Presentation/View/widgets/ProducPrice.dart';
import 'package:slashinternship/features/Product/Presentation/View/widgets/customIndicator.dart';
import 'package:slashinternship/features/Product/Presentation/View/widgets/customPageview.dart';
import 'package:slashinternship/features/Product/data/Models/product_model/product_model.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody(
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
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            CustomPageView(
                productModel: productModel,
                currentPage: currentPage,
                pageController: pageController,
                OnPageChanged: OnPageChanged),
            SizedBox(
              height: 50,
            ),
            CustomIndicator(
              currentPage: currentPage,
              productModel: productModel,
              pageController: pageController,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(productModel.name ?? 'title',
                    style: CustomTextStyle.White600_16),
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                productModel.brands!.brandLogoImagePath),
                            fit: BoxFit.fill,
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      productModel.brands!.brandName ?? 'title',
                      style: CustomTextStyle.White600_16.copyWith(
                          fontWeight: FontWeight.normal, fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ProductPrice(
              productModel: productModel,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Description ',
              style: CustomTextStyle.White600_16,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              productModel.description ?? '',
              style: CustomTextStyle.White600_16.copyWith(
                  fontWeight: FontWeight.normal, fontSize: 14),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
