import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarusalHomeSlider extends StatelessWidget {
  CarusalHomeSlider({super.key, required this.items , required this.height});

  List<String> items;
  double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 24.0),
      child: SizedBox(
        width: 398.w,
        height: height,
        child: CarouselSlider(
            items: items
                .map((item) => Container(
                      child:
                          Image.asset(item, fit: BoxFit.fill), // Display image
                    ))
                .toList(),
            options: CarouselOptions(
              height: 400,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            )),
      ),
    );
  }
}
