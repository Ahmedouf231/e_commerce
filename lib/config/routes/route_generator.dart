import 'package:e_commerce/config/routes/routes.dart';
import 'package:e_commerce/features/mainLayout/categoryTab/presentaiton/bloc/pages/category.dart';
import 'package:e_commerce/features/mainLayout/categoryTab/presentaiton/screens/subCategory/subCategory.dart';
import 'package:e_commerce/features/mainLayout/favoriteTab.dart/presentaiton/bloc/pages/favorite.dart';
import 'package:e_commerce/features/mainLayout/homeTab/presentaiton/bloc/pages/home.dart';
import 'package:e_commerce/features/login/presentaiton/bloc/pages/login.dart';
import 'package:e_commerce/features/productDetalis/productDetails.dart';
import 'package:e_commerce/features/signup/presentaiton/bloc/pages/signUp.dart';
import 'package:e_commerce/features/splash/splash.dart';
import 'package:e_commerce/features/mainLayout/youraccount.dart/presentaiton/bloc/pages/your_account.dart';
import 'package:e_commerce/mainLayout.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.mainLayout:
        return MaterialPageRoute(
          builder: (context) => MainLayout(),
        ); 
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (context) => SplachScreen(),
        );

         case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ); 
         case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (context) => SignupScreen(),
        ); 
         case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
         case Routes.favoriteScreen:
        return MaterialPageRoute(
          builder: (context) => FavoriteTab(),
        ); 
         case Routes.categoryScreen:
        return MaterialPageRoute(
          builder: (context) => CategoryTab(),
        ); 
         case Routes.yourAccountScreen:
        return MaterialPageRoute(
          builder: (context) => YourAccountTab(),
        );
       case Routes.subCategoryScreen:
        return MaterialPageRoute(
          builder: (context) =>Subcategory(),
        );
        case Routes.productDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => Productdetails(),
        );

      default:
        return UnDefinedRoute();
    }
  }

  static Route<dynamic> UnDefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text("No Route Found"),
        ),
        body: const Center(
          child: Text("No Route Found"),
        ),
      ),
    );
  }
}
