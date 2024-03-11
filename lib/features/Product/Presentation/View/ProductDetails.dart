import 'package:flutter/material.dart';
import 'package:slashinternship/core/Utils/Customtextstyle.dart';
import 'package:slashinternship/core/Utils/appcolor.dart';
import 'package:slashinternship/features/Product/Presentation/View/widgets/ProductDetailesBody.dart';
import 'package:slashinternship/features/Product/data/Models/product_model/product_model.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key, required this.productModel});
  static String id = 'ProductDetailsView';
  final ProductModel productModel;

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  final _pageController = PageController(viewportFraction: 0.877);

  int currentPage = 0;

  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.toInt();
        print(currentPage);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PrimaryColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: AppColors.PrimaryColor,
        title: Text(
          'Product Details',
          style: CustomTextStyle.White600_16.copyWith(fontSize: 20),
        ),
      ),
      body: ProductDetailsBody(
        OnPageChanged: (index) {
          setState(() {
            index = currentPage;
          });
        },
        productModel: widget.productModel,
        pageController: _pageController,
        currentPage: currentPage,
      ),
    );
  }
}
