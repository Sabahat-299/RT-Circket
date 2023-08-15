import 'package:flutter/material.dart';
import 'package:rt_cricket/Utils/Appcolor.dart';

class AppIconButton extends StatelessWidget {
  IconData? icon;
  Color? color;
  double? size;
  void Function()? onPressed;
  AppIconButton({Key? key,this.onPressed,required this.icon,this.color,this.size }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  IconButton(
      icon: Icon(icon,color: Colors.white,size: 20,),
      onPressed: onPressed,
    );
  }
}
