import 'package:e_commerce/core/components/textfiledhome.dart';
import 'package:e_commerce/core/uitils/colors.dart';
import 'package:e_commerce/core/uitils/styleManager.dart';
import 'package:e_commerce/features/mainLayout/categoryTab/presentaiton/screens/subCategory/subCategoryItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Subcategory extends StatelessWidget {
  const Subcategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(  
        toolbarHeight: 120.h,
        title: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Online Shop" , style: getLightStyle(color: ColorsApp.primaryCalor,
        fontSize: 25 )
        ,) , 
        SizedBox(
          height: 10.h,
        ),
       const HomeTextFiled(),
          ],
        )
      ), 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ,
                  mainAxisSpacing: 16.0, 
                crossAxisSpacing: 10.0, 
                ),
               itemBuilder: (context, index) => const Subcategoryitem(),
               itemCount: 30,
               
               ),
            )
          ],
        ),
      ),
    );
  }
}
