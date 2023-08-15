import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/Appcolor.dart';
import '../../Utils/Appimage.dart';
import '../../Utils/appcontainercolor.dart';
import '../../Widgets/AppTextStyle.dart';
import '../../Widgets/App_Elevated Button.dart';
import '../End_User_Module/End_User Live Details.dart';

class Matches extends StatefulWidget {
  const Matches({Key? key, required String title}) : super(key: key);

  @override
  State<Matches> createState() => _MatchesState();
}

class _MatchesState extends State<Matches> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(title: 'Ongoing',
              fontSize: 15,
              color: Colors.white,),
            const SizedBox(height: 11,),
            Container(
              width: 340,
              height: 160,
              decoration:  BoxDecoration(
                gradient:  const LinearGradient(colors:[
                  AppContainerColor.kLightGreyColor,
                  AppContainerColor.kDarkGreyColor,
                ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius:BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(height: 11,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextWidget(title: 'Bahria vs Attock',
                          fontSize: 12,
                          color: Colors.white,),
                        const SizedBox(width: 90,),
                        const Icon(
                          Icons.live_tv_outlined,
                          color: Colors.red ,size: 16,),
                        TextWidget(title: 'Live',
                          fontSize: 10,
                          color: Colors.red,),

                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        const SizedBox(width: 15,),
                        Column(
                          children: [
                            Image(
                                width: 40,
                                height: 40,
                                image: AssetImage(
                                    AppImages.Barihaimage.toString())),
                            TextWidget(title: 'Bahria',fontSize: 14,color: Colors.white,)
                          ],
                        ),
                        const SizedBox(width: 11,),
                        Column(
                          children: [
                            TextWidget(title: '189/5',color: Colors.white,fontSize: 12,),
                            TextWidget(title: '(20)',color: Colors.white,fontSize: 10,),
                          ],
                        ),
                        const SizedBox(width: 100,),
                        Column(
                          children: [
                            TextWidget(title: '148/3',color: Colors.white,fontSize: 12,),
                            TextWidget(title: '(17.5)',color: Colors.white,fontSize: 10,),
                          ],
                        ),
                        const SizedBox(width: 11,),
                        Column(
                          children: [
                            Image(
                                width: 40,
                                height: 40,
                                image: AssetImage(
                                    AppImages.attockimage.toString())),
                            TextWidget(title: 'Attock',fontSize: 14,color: Colors.white,)
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 11,),
            TextWidget(title: 'Upcoming',
              fontSize: 14,
              color: Colors.white,),
            const SizedBox(height: 11,),
            Container(
              width: 340,
              height: 100,
              decoration:  BoxDecoration(
                gradient: const LinearGradient(colors:[
                  AppContainerColor.kLightGreyColor,
                  AppContainerColor.kDarkGreyColor,
                ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius:BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(

                  children: [
                    const SizedBox(height: 11,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Image(
                                width: 40,
                                height: 40,
                                image: AssetImage(
                                    AppImages.rawatimage.toString())),
                            TextWidget(title: 'Multan',fontSize: 14,color: Colors.white,)
                          ],
                        ),
                        const SizedBox(width: 11,),
                        Column(
                          children: [
                            TextWidget(title: 'MON 24 FEB',color: Colors.white,fontSize: 12,),
                            TextWidget(title: '09:30 PM',color: Colors.white,fontSize: 10,),
                          ],
                        ),

                        const SizedBox(width: 11,),
                        Column(
                          children: [
                            Image(
                                width: 40,
                                height: 40,
                                image: AssetImage(
                                    AppImages.saddarimage.toString())),
                            TextWidget(title: 'Saddar',fontSize: 14,color: Colors.white,)
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),


            ),
          ],
        ),
      ),
    );

  }
}
