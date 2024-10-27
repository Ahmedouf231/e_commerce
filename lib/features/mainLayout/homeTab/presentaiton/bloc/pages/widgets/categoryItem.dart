import 'package:e_commerce/core/uitils/colors.dart';
import 'package:e_commerce/core/uitils/fontManager.dart';
import 'package:e_commerce/core/uitils/images.dart';
import 'package:e_commerce/core/uitils/styleManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Categoryitem extends StatelessWidget {
  const Categoryitem({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column( 
          children: [
           Container(  
            width: 80.w,
            height: 100.h,
            decoration: BoxDecoration( 
          color: Colors.amber,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(ImagesAssets.women)),
           Text("Women's \n fashion" ,style: getRegularStyle(color: ColorsApp.primaryCalor ,
           fontSize: FontSize.s17), ),
          ],
        );
  }
}
