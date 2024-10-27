import 'package:e_commerce/core/uitils/colors.dart';
import 'package:e_commerce/core/uitils/images.dart';
import 'package:e_commerce/core/uitils/styleManager.dart';
import 'package:e_commerce/features/mainLayout/categoryTab/presentaiton/bloc/pages/category.dart';
import 'package:e_commerce/features/mainLayout/categoryTab/presentaiton/screens/subCategory/subCategory.dart';
import 'package:e_commerce/features/mainLayout/favoriteTab.dart/presentaiton/bloc/pages/favorite.dart';
import 'package:e_commerce/features/mainLayout/homeTab/presentaiton/bloc/pages/home.dart';
import 'package:e_commerce/core/components/textfiledhome.dart';
import 'package:e_commerce/features/mainLayout/youraccount.dart/presentaiton/bloc/pages/your_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  int selectedIndex = 0;
  bool isSelected = false;
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
        HomeTextFiled(),
          ],
        )
      ), 
        backgroundColor: ColorsApp.primaryCalor,
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (value) {
              selectedIndex = value;
              isSelected = true;
              setState(() {});
            },
            
            items: [
              BottomNavigationBarItem(
                  label:  "",
                  backgroundColor:  ColorsApp.primaryCalor,
                  icon: const ImageIcon(AssetImage(
                    IconImages.home,
                    
                  )),
                  ),
              BottomNavigationBarItem( 
                backgroundColor: ColorsApp.primaryCalor,
                  label: "",
                  icon: const ImageIcon(AssetImage(
                    IconImages.category,
                  ))),
              BottomNavigationBarItem(
                backgroundColor: ColorsApp.primaryCalor,
                  label:  "",
                  icon: const ImageIcon(AssetImage(
                    IconImages.heart,
                  ))),
              BottomNavigationBarItem(
                backgroundColor: ColorsApp.primaryCalor,
                  label:  "",
                  icon: const ImageIcon(AssetImage(
                     IconImages.user,
                  ))),
            ]  ),
        body: tabs[selectedIndex]
        );
  }

  List<Widget> tabs = [ 
       HomeScreen() , 
       CategoryTab() ,
       FavoriteTab(),
       YourAccountTab() ,
       Subcategory()

  ];
}