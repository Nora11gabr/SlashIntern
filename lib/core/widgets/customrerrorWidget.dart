import 'package:flutter/material.dart';
import 'package:slashinternship/core/Utils/Customtextstyle.dart';

class CustomErrorWidget extends StatelessWidget {
  CustomErrorWidget({super.key, required this.ErrorMessage});
  final String ErrorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        ErrorMessage,
        style: CustomTextStyle.White600_16,
      ),
    );
  }
}
