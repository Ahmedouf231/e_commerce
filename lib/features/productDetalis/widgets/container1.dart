import 'package:e_commerce/core/uitils/colors.dart';
import 'package:e_commerce/core/uitils/fontManager.dart';
import 'package:e_commerce/core/uitils/styleManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( 
      alignment: Alignment.center,
      width: 102.w,
      height: 35.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.grey,
            width: 1.w,
          )),
      child: Text(
        "3,320 Sold",
        style: getSemiBoldStyle(
            color: ColorsApp.primaryCalor, fontSize: FontSize.s14),
      ),
    );
  }
}
