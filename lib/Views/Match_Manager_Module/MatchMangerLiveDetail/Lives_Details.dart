import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rt_cricket/Views/Match_Manager_Module/MatchMangerLiveDetail/S_Disscusion.dart';
import 'package:rt_cricket/Views/Match_Manager_Module/MatchMangerLiveDetail/S_Ground.dart';
import 'package:rt_cricket/Views/Match_Manager_Module/MatchMangerLiveDetail/S_Streaming.dart';

import '../../../Utils/Appimage.dart';
import '../../../Utils/appbackgroundcolor.dart';
import '../../../Utils/appcontainercolor.dart';
import '../../../Widgets/AppTextStyle.dart';
import 'S_Commentry.dart';
import 'Score_Card.dart';

class MLivesDetail extends StatefulWidget {
  const MLivesDetail({Key? key}) : super(key: key);

  @override
  State<MLivesDetail> createState() => _MLivesDetailState();
}

class _MLivesDetailState extends State<MLivesDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppBackgroundColor.kblackColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(
            color: Colors.white
        ),
        backgroundColor: AppContainerColor.kDarkGreyColor,
        title: TextWidget(
          title: "Bahria vs Attock",
          fontSize: 15,
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 700,
              height:150,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppContainerColor.kLightGreyColor,
                    AppContainerColor.kDarkGreyColor,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Image(
                                width: 40,
                                height: 40,
                                image:
                                AssetImage(AppImages.Barihaimage.toString())),
                            TextWidget(
                              title: 'Bahria',
                              fontSize: 14,
                              color: Colors.white,
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 11,
                        ),
                        Column(
                          children: [
                            TextWidget(
                              title: '189/5',
                              color: Colors.white,
                              fontSize: 12,
                            ),
                            TextWidget(
                              title: '(20)',
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        Column(
                          children: [
                            TextWidget(
                              title: '148/3',
                              color: Colors.white,
                              fontSize: 12,
                            ),
                            TextWidget(
                              title: '(17.5)',
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 11,
                        ),
                        Column(
                          children: [
                            Image(
                                width: 40,
                                height: 40,
                                image:
                                AssetImage(AppImages.attockimage.toString())),
                            TextWidget(
                              title: 'Attock',
                              fontSize: 14,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextWidget(
                      title: 'Bahira Won the Toss & Choose to Bat',
                      color: Colors.white,
                      fontSize: 13,
                    ),

                  ],
                ),
              ),
            ),
        const SizedBox(height: 11,),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap:(){
              Get.to(const MScoreCard());
            } ,
            child: Container(
              width: 340,
              height:120,
              decoration:  BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    AppContainerColor.kLightGreyColor,
                    AppContainerColor.kDarkGreyColor,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.credit_score_outlined,color: Colors.white,),
                  const SizedBox(height: 12,),
                  TextWidget(title: 'Manage ScoreCard',fontWeight: FontWeight.bold,fontSize: 12,color: Colors.white,)
                ],
              ),
            ),
          ),
        ),
            const SizedBox(height: 11,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  InkWell(
                    onTap:(){
                      Get.to(const MCommentry());
            },
                    child: Container(
                      width: 160,
                      height:120,
                      decoration:  BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            AppContainerColor.kLightGreyColor,
                            AppContainerColor.kDarkGreyColor,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.person_sharp,color: Colors.white,),
                          const SizedBox(height: 12,),
                          TextWidget(title: ' Manage Commentary ',fontWeight: FontWeight.bold,fontSize: 10,color: Colors.white,)
                        ],
                      ),
                    ),
                  ),
                 const SizedBox(width: 13,),
                  InkWell(
                    onTap:(){
                      Get.to(const MDiscussion());
                    },
                    child: Container(
                      width: 160,
                      height:120,
                      decoration:  BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            AppContainerColor.kLightGreyColor,
                            AppContainerColor.kDarkGreyColor,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.groups,color: Colors.white,),
                          const SizedBox(height: 12,),
                          TextWidget(title: ' Manage Discussion ',fontWeight: FontWeight.bold,fontSize: 10,color: Colors.white,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 11,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  InkWell(
                    onTap:(){
                      Get.to(const MStreaming());
                    },
                    child: Container(
                      width: 160,
                      height:120,
                      decoration:  BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            AppContainerColor.kLightGreyColor,
                            AppContainerColor.kDarkGreyColor,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.live_tv_sharp,color: Colors.white,),
                          const SizedBox(height: 12,),
                          TextWidget(title: '  Manage Live Streaming ',fontWeight: FontWeight.bold,fontSize: 10,color: Colors.white,)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 13,),
                  InkWell(
                    onTap:(){
                      Get.to(const MGroundVenue());
                    },
                    child: Container(
                      width: 160,
                      height:120,
                      decoration:  BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            AppContainerColor.kLightGreyColor,
                            AppContainerColor.kDarkGreyColor,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.gite_rounded,color: Colors.white,),
                          const SizedBox(height: 12,),
                          TextWidget(title: '  Manage Ground Venue ',fontWeight: FontWeight.bold,fontSize: 10,color: Colors.white,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
