import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rt_cricket/Utils/Appcolor.dart';
import 'package:rt_cricket/Utils/Appimage.dart';
import 'package:rt_cricket/Utils/appbackgroundcolor.dart';
import 'package:rt_cricket/Utils/appcontainercolor.dart';
import 'package:rt_cricket/Views/End_User_Module/End_User%20Commentry.dart';
import 'package:rt_cricket/Views/End_User_Module/End_User%20Live%20Details.dart';
import 'package:rt_cricket/Widgets/AppTextStyle.dart';
import 'package:rt_cricket/Widgets/App_Elevated%20Button.dart';
import 'package:rt_cricket/Widgets/App_Icon%20Button.dart';

import 'Annoucment.dart';

class EndUserDashboard extends StatefulWidget {
  const EndUserDashboard({Key? key}) : super(key: key);

  @override
  State<EndUserDashboard> createState() => _EndUserDashboardState();
}

class _EndUserDashboardState extends State<EndUserDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppBackgroundColor.kblackColor,
      appBar: AppBar(

        backgroundColor: AppBackgroundColor.kblackColor,
        title: TextWidget(title: "Roof Top Cricket",fontSize: 15,color: Colors.white,),
        centerTitle: true,
        actions: [
          AppIconButton(
            onPressed: (){
              Get.to(const EndUserAnouncment());
            },
            icon: Icons.doorbell_outlined,color: Colors.white,size: 30,),
          const SizedBox(width: 10,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 340,
                  height: 160,
                  decoration:  BoxDecoration(
                    gradient: const LinearGradient(colors:[
                     AppColor.kLightPurpleColor,
                      AppColor.kPurpleColor
                    ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius:BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(width: 13,),
                            Column(
                              children: [
                                TextWidget(title: 'Rawalpindi vs.\n Islamabad',
                                  fontSize: 14,
                                  color: Colors.white,),
                                const SizedBox(height: 10,),
                                TextWidget(title: 'Match',
                                  fontSize: 10,
                                  color: Colors.white,),
                                const SizedBox(height: 10,),
                                AppElevatedButton(
                                  onPressed: (){
                                    Get.to(const LiveCommentary());
                                  },
                                  title: 'Watch Live',
                                  backgroundColor: AppColor.kredColor,
                                ),
                              ],),
                            const SizedBox(width: 70,),
                            Image(
                                height: 140,
                                fit: BoxFit.cover,
                                image:AssetImage(
                                    AppImages.cricketerimage.toString())),
                          ],),)),
                          const SizedBox(height: 11,),
                          TextWidget(title: 'Ongoing',
                          fontSize: 15,
                          color: Colors.white,),
                      const SizedBox(height: 11,),
                      Container(
                      width: 340,
                      height: 160,
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

                            SizedBox(
                              height: 30,
                              child: AppElevatedButton(

                                onPressed: (){
                                  Get.to(const LiveDetails());
                                },
                                title: 'Watch Live',
                                backgroundColor: AppColor.kredColor,

                              ),
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
                              TextWidget(title: 'Rawat',fontSize: 14,color: Colors.white,)
                            ],
                          ),
                          const SizedBox(width: 11,),
                          Column(
                            children: [
                              TextWidget(title: 'MON 25 FEB',color: Colors.white,fontSize: 12,),
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
      ),
    );
  }
}
