import 'package:e_commerce/config/routes/routes.dart';
import 'package:e_commerce/core/components/validator.dart';
import 'package:e_commerce/core/uitils/images.dart';
import 'package:e_commerce/features/login/presentaiton/bloc/pages/widgets/elevated_login_Button.dart';
import 'package:e_commerce/core/components/textFiled.dart';
import 'package:e_commerce/core/uitils/colors.dart';
import 'package:e_commerce/core/uitils/fontManager.dart';
import 'package:e_commerce/core/uitils/styleManager.dart';
import 'package:e_commerce/features/mainLayout/homeTab/presentaiton/bloc/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> { 
  
  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  bool passwordVisible = true ; 

  
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
                height: 87.h,
              ),
              Text("please sign in with your Email",
                  style:  getSemiBoldStyle(
                    color: ColorsApp.secondryCalor,
                    fontSize: FontSize.s20,
                  ),
                  textAlign: TextAlign.start),
              SizedBox(
                height: 40.h,
              ),
              TextFiledWidgt(
                hintText: "Enter your Email ",
                text: "Email",
                controller: emailController,
                validator: (value) => Validator.validateEmail(value),
              ),
              SizedBox(
                height: 40.h,
              ),
              TextFiledWidgt( 
                togglePasswordVisibility: togglePasswordVisibility,
                hintText: "enter your password",
                text: "password",
                controller: passwordController,
                validator: (value) => Validator.validatePassword(value),
                isPassword: passwordVisible ,
                suffixIcon: IconButton(
                     icon: Icon(passwordVisible
                         ?Icons.visibility_off  
                         : Icons.visibility ),
                     onPressed: togglePasswordVisibility,
                   ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forget password",
                      style: getMediumStyle(
                          color: ColorsApp.secondryCalor, fontSize: FontSize.s18),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              ElevatedLoginbuttonWidght(
                text: "Login",
                onClick: handleLogin,
              ),
              SizedBox(
                height: 30.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.signUpScreen);
                },
                child: Text(
                  "Don't have an account? Create Account",
                  style: getMediumStyle(
                      color: ColorsApp.secondryCalor, fontSize: FontSize.s18),
                ),
              )
            ],
          ),
        ),
      );
    }
String handleLogin(BuildContext context) {
      if (formKey.currentState!.validate()) {
        Navigator.pushReplacement(
          context , MaterialPageRoute(builder: (context) => HomeScreen())
        );
        return "Form validation succeeded";
      } else {
        return "Form validation failed";
      }
    }
  void togglePasswordVisibility() {
    setState(() {
      passwordVisible = !passwordVisible; 
    });
    
  }
}
