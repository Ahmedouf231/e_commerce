import 'package:e_commerce/core/components/textRowWidget.dart';
import 'package:e_commerce/core/uitils/colors.dart';
import 'package:e_commerce/core/uitils/fontManager.dart';
import 'package:e_commerce/core/uitils/images.dart';
import 'package:e_commerce/core/uitils/styleManager.dart';
import 'package:e_commerce/features/mainLayout/homeTab/presentaiton/bloc/pages/widgets/carousal.dart';
import 'package:e_commerce/features/productDetalis/widgets/RowDetailes.dart';
import 'package:e_commerce/features/productDetalis/widgets/addtoCartButton.dart';
import 'package:e_commerce/features/productDetalis/widgets/colorSelector.dart';
import 'package:e_commerce/features/productDetalis/widgets/sizeSelector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Productdetails extends StatelessWidget {
   Productdetails({super.key});
   List<String> items = [
    ImagesAssets.productDetails1,
    ImagesAssets.productDetails2,
    ImagesAssets.productDetails3,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
        appBar: AppBar( 
          centerTitle: true,
      title: Text(
        "Product Details ",
        style: getSemiBoldStyle(
          color: ColorsApp.primaryCalor,
          fontSize: FontSize.s18, 
        )
      ),
      actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
        IconButton(
          icon: Image.asset(IconImages.carIcon),
          onPressed: () {},
            )
      ],
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarusalHomeSlider(
            items: items,
            height: 300.h,
          ),
          TextRowWidget(
            text1: "NIKE AIR JORDEN " ,
            text2: " EGP 3,500  " ,
            textStyle2: getSemiBoldStyle(color: ColorsApp.primaryCalor , fontSize: FontSize.s18),
            textStyle1: getSemiBoldStyle(color: ColorsApp.primaryCalor , fontSize: FontSize.s18) ,
          ) ,
           Rowdetailes(),
          Text("Description" , style: getSemiBoldStyle(color: ColorsApp.primaryCalor ,
          fontSize: FontSize.s18),) ,
          Text("Nike is a mulinational corporation that designs .." , 
          style:  getLightStyle(color:  ColorsApp.primaryCalor , fontSize: FontSize.s14),) ,
           SizeSelector(),
           ColorSelector() ,
           Addtocartbutton(),
        ],
      ),
    ),);
  }
}
