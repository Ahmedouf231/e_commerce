import 'package:e_commerce/config/routes/routes.dart';
import 'package:e_commerce/core/uitils/colors.dart';
import 'package:e_commerce/core/uitils/styleManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElevatedSignUpbuttonWidght extends StatelessWidget {
  String text;
  ElevatedSignUpbuttonWidght({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      height: 64.h,
      child: ElevatedButton(
        onPressed: () {
        },
        child: Text("$text",
            style: getSemiBoldStyle(
              color: ColorsApp.primaryCalor,
              fontSize: 18,
            )),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}
