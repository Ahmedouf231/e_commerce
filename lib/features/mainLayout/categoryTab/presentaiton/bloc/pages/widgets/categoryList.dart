import 'package:e_commerce/config/routes/routes.dart';
import 'package:e_commerce/core/uitils/colors.dart';
import 'package:e_commerce/features/mainLayout/categoryTab/presentaiton/bloc/pages/widgets/kindCategory.dart';
import 'package:flutter/material.dart';

class Categorylist extends StatefulWidget {
  const Categorylist({super.key});

  @override
  State<Categorylist> createState() => _CategorylistState();
}

class _CategorylistState extends State<Categorylist> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsApp.wihtelight,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
        ),
        border: Border.all(
          color: Colors.grey,
          width: 0.8,
        ),
      ),
      width: 135,
      height: double.infinity,
      child: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) {
          return Kindcategory(
            isSelected: selectedIndex == index,
            onTap: () {
              setState(() {
                selectedIndex = index;
                Navigator.pushNamed(context, Routes.subCategoryScreen);
              });
            },
          );
        },
      ),
    );
  }
}
