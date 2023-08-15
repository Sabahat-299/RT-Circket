import 'dart:ui';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rt_cricket/Utils/appbackgroundcolor.dart';
import '../Utils/Appcolor.dart';
class AppElevatedButton extends StatelessWidget {
  String title;
  void Function()? onPressed;
  Color? backgroundColor;
  AppElevatedButton({Key? key, required this.title,this.onPressed,this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.kredColor,
            padding:  const EdgeInsets.symmetric( horizontal: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Colors.white),
            ),),

          onPressed: onPressed,

          child: Text(title,style: const TextStyle(color:Colors.white,fontSize: 10),)),
    );
  }
}
