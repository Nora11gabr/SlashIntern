import 'package:flutter/material.dart';
import 'package:slashinternship/core/Utils/Customtextstyle.dart';
import 'package:slashinternship/features/Product/Presentation/View/widgets/CustomBtn.dart';

class ProductProperties extends StatelessWidget {
  const ProductProperties({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(
            10,
            (index) {
              return GestureDetector(
                child: Container(
                  margin: EdgeInsets.all(3),
                  width: 25,
                  height: 25,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Select size ',
              style: CustomTextStyle.White600_16.copyWith(
                  fontWeight: FontWeight.normal, fontSize: 14),
            ),
            Text(
              'Size chart ',
              style: CustomTextStyle.White600_16.copyWith(
                  fontWeight: FontWeight.normal, fontSize: 14),
            ),
          ],
        ),
        CustomBtn(),
      ],
    );
  }
}
