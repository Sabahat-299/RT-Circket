import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rt_cricket/Model/Batterlistmodel.dart';
import 'package:rt_cricket/Model/Bowlerlistmodel.dart';
import 'package:rt_cricket/Utils/Appcolor.dart';
import 'package:rt_cricket/Utils/appbackgroundcolor.dart';
import 'package:rt_cricket/Utils/appcontainercolor.dart';
import 'package:rt_cricket/Widgets/AppTextStyle.dart';

import '../../Utils/Appimage.dart';
import '../../Widgets/App_Elevated Button.dart';
import 'End_User Discussion.dart';
import 'End_User Scorecard.dart';
import 'WatchLive.dart';

class LiveDetails extends StatefulWidget {
  const LiveDetails({Key? key}) : super(key: key);

  @override
  State<LiveDetails> createState() => _LiveDetailsState();
}
final List<String> tabTitles = ['Watch Live', 'Scorecard', 'Commentary', 'Discussion'];
class _LiveDetailsState extends State<LiveDetails> {
  List<String> listofpoints = [
    '0',
    '0',
    '4',
    '0',
    '0',
    '4',
  ];

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
          title: "Live",
          fontSize: 15,
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 700,
            height:190,
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
                    height: 11,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextWidget(
                        title: 'Bahria vs Attock',
                        fontSize: 12,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 90,
                      ),
                       const Icon(
                        Icons.live_tv_outlined,
                        color: Colors.red,
                        size: 16,
                      ),
                      TextWidget(
                        title: 'Live',
                        fontSize: 10,
                        color: Colors.red,
                      ),
                    ],
                  ),
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
                    height: 12,
                  ),
                  TextWidget(
                    title: 'Attock Need 41 Runs in 13 Balls',
                    color: Colors.white,
                    fontSize: 13,
                  ),
                  TextWidget(
                    title: 'CRR: 6.72 RRR: 20.21',
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 11,),
          Container(
            height: 40,
            color: Colors.white, // You can adjust the height as needed
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(width: 2),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 300, // You can adjust the width of each item as needed
                  color: AppBackgroundColor.kblackColor,
                  child: Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.cyan, shape: BoxShape.circle),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 12,),
          DefaultTabController(
            length: tabTitles.length,
            initialIndex: 0,
            child: Column(
              children: <Widget>[
                Container(
                  child: ButtonsTabBar(
                    backgroundColor: AppColor.kPurpleColor,
                    // Your other properties for ButtonsTabBar
                    labelStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    unselectedLabelStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    unselectedBackgroundColor: AppContainerColor.kDarkGreyColor,
                    tabs: const [
                      Tab(text: 'Watch Live'),
                      Tab(text: 'Scorecard'),
                      Tab(text: 'Commentary'),
                      Tab(text: 'Discussion'),
                    ],
                  ),
                ),
                 SizedBox(
                  height: 360,
                  child: TabBarView(children: [
                    WatchLive(title: tabTitles[0]),
                    ScoreCard(title: tabTitles[1]),
                    const Text("Commentry",style: TextStyle(color: Colors.white),),
                    Discussion(title: tabTitles[3]),

                  ]),
                )

              ],
            ),
          ),

        ],
      ),
    );
  }
}
