import 'package:e_commerce/config/routes/routes.dart';
import 'package:e_commerce/core/uitils/colors.dart';
import 'package:e_commerce/core/uitils/fontManager.dart';
import 'package:e_commerce/core/uitils/images.dart';
import 'package:e_commerce/core/uitils/styleManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Subcategoryitem extends StatelessWidget {
  const Subcategoryitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190.w,
      height: 240.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell( 
              onTap: () {
        Navigator.pushNamed(context, Routes.productDetailsScreen);
          },
            child: Image.asset(
              ImagesAssets.subcategory,
              fit: BoxFit.fill,
              width: double.infinity,
              height: 125.h,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Nike Air Jorden \n Nike Shoed flexible for wo..",
              style: getRegularStyle(
                  color: ColorsApp.primaryCalor, fontSize: FontSize.s14),
              textAlign: TextAlign.start,
            ),
          ),
          Text(
            "EGP 1,200",
            style: getRegularStyle(
                color: ColorsApp.primaryCalor, fontSize: FontSize.s14),
            textAlign: TextAlign.start,
          ),
          Row(
            children: [
              Text(
                "Review (4.6)",
                style: getRegularStyle(
                    color: ColorsApp.primaryCalor, fontSize: FontSize.s12),
              ),
            ],
          )
        ],
      ),
    );
  }
}
