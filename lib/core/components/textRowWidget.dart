import 'package:e_commerce/core/uitils/colors.dart';
import 'package:e_commerce/core/uitils/styleManager.dart';
import 'package:flutter/material.dart';

class TextRowWidget extends StatelessWidget {
  TextRowWidget({super.key, required this.text1, required this.text2, this.textStyle1 , this.textStyle2 });
  String text1;
  String text2;
    TextStyle? textStyle2 = getRegularStyle(color: ColorsApp.primaryCalor, fontSize: 12);
    TextStyle? textStyle1 = getRegularStyle(color: ColorsApp.primaryCalor, fontSize: 12);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: textStyle1,
        ),
        Text(text2,
            style: textStyle2)
      ],
    );
  }
}
