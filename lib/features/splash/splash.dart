import 'package:e_commerce/core/uitils/colors.dart';
import 'package:e_commerce/core/uitils/images.dart';
import 'package:e_commerce/features/login/presentaiton/bloc/pages/login.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplachScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplachScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil( 
          context, MaterialPageRoute(builder: (context) => LoginScreen()),
          (route) => false ,
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.primaryCalor,
      body: Center(child: Image.asset(ImagesAssets.logo)),
    );
  }
}
