import 'package:e_commerce/core/uitils/colors.dart';
import 'package:e_commerce/core/uitils/styleManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Kindcategory extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;

  Kindcategory({
    required this.isSelected,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 135.h,
        height: 82,
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          border: Border.all(
            color: isSelected ? ColorsApp.primaryCalor : Colors.transparent,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            "Men's Fashion",
            style: getSemiBoldStyle(
              color: ColorsApp.primaryCalor,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
