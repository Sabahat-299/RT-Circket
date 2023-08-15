import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rt_cricket/Utils/Appimage.dart';

import '../../Utils/Appcolor.dart';
import '../../Utils/appbackgroundcolor.dart';
import '../../Widgets/AppTextStyle.dart';

class LiveVideo extends StatefulWidget {
  const LiveVideo({Key? key}) : super(key: key);

  @override
  State<LiveVideo> createState() => _LiveVideoState();
}

class _LiveVideoState extends State<LiveVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppBackgroundColor.kblackColor,
        appBar: AppBar(

        backgroundColor: AppBackgroundColor.kblackColor,
        title: TextWidget(title: "Live",fontSize: 15,color: Colors.white,),
    centerTitle: true,
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 340,
              height: 160,
              child: Image(image: AssetImage(AppImages.VIDEOimage.toString()))),
        ],
      ),
    );
  }
}
