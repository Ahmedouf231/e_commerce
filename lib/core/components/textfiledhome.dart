import 'package:e_commerce/core/uitils/colors.dart';
import 'package:e_commerce/core/uitils/fontManager.dart';
import 'package:e_commerce/core/uitils/images.dart';
import 'package:e_commerce/core/uitils/styleManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTextFiled extends StatelessWidget {
  const HomeTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Row( 
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 300.w,
          height: 50.h,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: ColorsApp.secondryCalor,
              border: OutlineInputBorder( 
                borderRadius: BorderRadius.circular(25),
                borderSide: const  BorderSide(color: ColorsApp.secondryCalor,
                style:BorderStyle.solid ),
               
              ),
              hintText: "What do you search for ?",
              hintStyle: getLightStyle(color: ColorsApp.primaryCalor ,
              fontSize: FontSize.s16),
              prefixIcon: const Icon(Icons.search),
              prefixIconColor: ColorsApp.primaryCalor     ,
            ),
          ),
        ) , 
        Image.asset(IconImages.carIcon)
      ],
    );
  }
}
