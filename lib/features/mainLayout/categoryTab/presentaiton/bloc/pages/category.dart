import 'package:e_commerce/features/mainLayout/categoryTab/presentaiton/bloc/pages/widgets/categoryList.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 16 , 
          left: 16 ,
          right: 16,
        ),
        child: Row(
          children: [
            Categorylist(),
            
          ],
        ),
      ),
    );
  }
}
