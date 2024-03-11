import 'package:flutter/material.dart';
import 'package:slashinternship/core/Utils/Customtextstyle.dart';
import 'package:slashinternship/core/Utils/appcolor.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          margin: EdgeInsets.all(12),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: AppColors.Green,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Text(
            'one size ',
            style: CustomTextStyle.White600_16.copyWith(
                color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
