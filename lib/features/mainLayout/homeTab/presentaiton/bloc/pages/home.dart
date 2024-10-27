import 'package:e_commerce/core/uitils/images.dart';
import 'package:e_commerce/features/mainLayout/homeTab/presentaiton/bloc/pages/widgets/GrideViewWidget.dart';
import 'package:e_commerce/features/mainLayout/homeTab/presentaiton/bloc/pages/widgets/carousal.dart';
import 'package:e_commerce/core/components/textRowWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<String> items = [
    ImagesAssets.ads1,
    ImagesAssets.ads2,
    ImagesAssets.ads3,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 17.0, right: 17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarusalHomeSlider(
              items: items,
              height: 200.h,
            ),
            TextRowWidget(
              text1: "catigories",
              text2: "view all ",
            ),
            SizedBox(height: 350.h, child: GrideWidgetView())
          ],
        ),
      ),
    );
  }
}
