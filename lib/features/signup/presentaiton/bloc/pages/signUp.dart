import 'package:e_commerce/core/components/textFiled.dart';
import 'package:e_commerce/core/components/validator.dart';
import 'package:e_commerce/core/uitils/colors.dart';
import 'package:e_commerce/core/uitils/images.dart';
import 'package:e_commerce/features/signup/presentaiton/bloc/pages/widgets/elevated_Signup_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


  
class SignupScreen extends StatefulWidget {

   SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController(); 

  final TextEditingController userNameController = TextEditingController(); 
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: ColorsApp.primaryCalor,
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(ImagesAssets.logoWord)),
            SizedBox(
              height: 30.h,
            ),
            TextFiledWidgt(hintText: " enter your full name ", text: "full name" ,
             controller: userNameController  ,
             validator: (value) => Validator.validateUsername(value) ,
             ),
            SizedBox(
              height: 30.h,
            ),
            TextFiledWidgt(hintText: "enter your mobile no.",
             text: " E-mail address" , 
            controller: emailController ,
            validator: (value) => Validator.validateEmail(value) ,

            ),
             SizedBox(
              height: 30.h,
            ),
             TextFiledWidgt(hintText: "enter your password ", text: "password " ,
             controller: passwordController ,
             validator: (value) => Validator.validatePassword(value),
            isPassword: true, 
             ),
              SizedBox(
              height: 30.h,
            ), 
             ElevatedSignUpbuttonWidght(text: "SignUp",
             
              )
          ],
        ),
      ),
    );
  }
}