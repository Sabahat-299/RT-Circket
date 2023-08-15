import 'package:flutter/material.dart';
import 'package:rt_cricket/Utils/appcontainercolor.dart';

class MyTextField extends StatelessWidget {
  TextEditingController controller;
  String hintText;
  final Widget? suffixIcon;
  final Icon? preffixIcon;
  bool obscureText = false;
  String? errorText;
  String? Function(String?)? validator;
  MyTextField({this.suffixIcon,this.preffixIcon,required this.hintText,required this.controller, required this.obscureText, this.validator,this.errorText,Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      controller: controller,
      obscureText:obscureText  ,
      validator: validator,
      decoration: InputDecoration(
          errorText: errorText,
          prefixIcon: preffixIcon,
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 12,color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
                color: AppContainerColor.kLightGreyColor,
                width: 1),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius:
              BorderRadius.circular(15),
              borderSide: const BorderSide(
                  color:
                  AppContainerColor.kDarkGreyColor)),
          errorBorder: OutlineInputBorder(
              borderRadius:
              BorderRadius.circular(10),
              borderSide: const BorderSide(
                  color:
                  AppContainerColor.kLightGreyColor))
      ),
    );
  }
}
