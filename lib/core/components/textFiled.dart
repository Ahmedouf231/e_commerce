import 'package:e_commerce/core/uitils/colors.dart';
import 'package:e_commerce/core/uitils/fontManager.dart';
import 'package:e_commerce/core/uitils/styleManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFiledWidgt extends StatefulWidget {
  String text;
  String hintText;
  final TextEditingController controller;
  final bool isPassword;
  final String? Function(String?) validator;
  final Function()? togglePasswordVisibility;
  final Widget ? suffixIcon;

  TextFiledWidgt(
      {super.key,
      required this.hintText,
      required this.text,
      required this.controller,
      required this.validator,
      this.togglePasswordVisibility,
      this.isPassword = false ,
      this.suffixIcon
      });

  @override
  State<TextFiledWidgt> createState() => _TextFiledWidgtState();
}

class _TextFiledWidgtState extends State<TextFiledWidgt> {
  final formKey = GlobalKey<FormState>();
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${widget.text}",
            style:
                getSemiBoldStyle(color: ColorsApp.secondryCalor, fontSize: FontSize.s18),
          ),
          SizedBox(
            height: 24.h,
          ),
          Container(
              decoration: BoxDecoration(
               color: ColorsApp.secondryCalor, // Set background color to white
                borderRadius: BorderRadius.circular(15), // Set border radius
              ),
              child: TextFormField(
                controller: widget.controller,
                obscureText: widget.isPassword,
                validator: widget.validator,
                decoration: InputDecoration(
                  suffixIcon: widget.suffixIcon,
                  hintText: "${widget.hintText}",
                  hintStyle: const  TextStyle(color: ColorsApp.primaryCalor),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(15), // Match border radius
                    borderSide: BorderSide.none, // Remove border line
                  ),
                  filled: true, // Fill the background
                  fillColor:  Colors.white, // Fill color (optional if set in BoxDecoration)
                ),
              ))
        ],
      ),
    );
  }
}
