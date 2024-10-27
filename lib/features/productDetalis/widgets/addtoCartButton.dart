import 'package:e_commerce/core/uitils/colors.dart'; // Keep your existing imports
import 'package:e_commerce/core/uitils/fontManager.dart';
import 'package:e_commerce/core/uitils/styleManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Addtocartbutton extends StatelessWidget {
  const Addtocartbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row( 
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              "Total price",
              style: getLightStyle(
                  color: ColorsApp.primaryCalor, fontSize: FontSize.s18),
            ),
            Text(
              "EGP 3,500",
              style: getMediumStyle(
                  color: ColorsApp.primaryCalor, fontSize: FontSize.s18),
            ),
          ],
        ),
        Container(
          width: 270.w,
          height: 48.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorsApp.primaryCalor, 
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsApp.primaryCalor, 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text(
              "Add to Cart",
              style: getSemiBoldStyle(
                color: ColorsApp.wihtelight,
                fontSize: FontSize.s20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
