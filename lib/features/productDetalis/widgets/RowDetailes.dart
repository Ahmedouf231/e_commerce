import 'package:e_commerce/core/uitils/colors.dart';
import 'package:e_commerce/core/uitils/fontManager.dart';
import 'package:e_commerce/core/uitils/styleManager.dart';
import 'package:e_commerce/features/productDetalis/widgets/container1.dart';
import 'package:e_commerce/features/productDetalis/widgets/container2.dart';
import 'package:flutter/material.dart';

class Rowdetailes extends StatelessWidget {
  const Rowdetailes({super.key});

  @override
  Widget build(BuildContext context) { 
    return Padding(
      padding: const EdgeInsets.only(
        top: 16.0,
        bottom: 16.0,
      ),
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         const  Container1(),
          Text(" 4.8(7.500 )",style: getRegularStyle(color: ColorsApp.primaryCalor ,
           fontSize: FontSize.s14),), 
          Container2(),
        ],
      ),
    );
  }
}
