import 'package:e_commerce/features/mainLayout/homeTab/presentaiton/bloc/pages/widgets/categoryItem.dart';
import 'package:flutter/material.dart';

class GrideWidgetView extends StatelessWidget {
  const GrideWidgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       Container( 
         child: GridView.builder(
            gridDelegate: const  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, 
              mainAxisExtent: 100, 
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => const Categoryitem(),
            itemCount: 30,
            scrollDirection: Axis.horizontal,
               ),
       );
  }
}
