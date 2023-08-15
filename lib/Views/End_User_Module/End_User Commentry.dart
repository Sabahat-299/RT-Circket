import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Model/BahriaPlayerlistmodel.dart';
import '../../Utils/Appimage.dart';
import '../../Utils/appbackgroundcolor.dart';
import '../../Utils/appcontainercolor.dart';
import '../../Widgets/AppTextStyle.dart';
import 'livecommentryteams/Attockmember.dart';
import 'livecommentryteams/BahriaMember.dart';

class LiveCommentary extends StatefulWidget {
  const LiveCommentary({Key? key}) : super(key: key);

  @override
  State<LiveCommentary> createState() => _LiveCommentaryState();
}
final List<String> tabTitles = ['Bahria', 'Attock', ];
class _LiveCommentaryState extends State<LiveCommentary> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppBackgroundColor.kblackColor,
      appBar: AppBar(
          iconTheme: const IconThemeData(
              color: Colors.white
          ),
          backgroundColor: AppContainerColor.kDarkGreyColor,
          title: TextWidget(title: 'Live', fontSize: 13,color: Colors.white,)
      ),
      body: Column(
        children: [
          Container(
            width: 700,
            height:120,
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
                      SizedBox(width: 70,),
                      Column(
                        children: [
                          TextWidget(
                            title: 'MON 24 FEB',
                            color: Colors.white,
                            fontSize: 12,
                          ),
                          TextWidget(
                            title: '9:30',
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ],
                      ),
                      SizedBox(width: 70,),
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

                ],
              ),
            ),
          ),
    const SizedBox(height: 12,),
    Column(
    children: [
    DefaultTabController(
    length: tabTitles.length,
    initialIndex: 0,
    child: Column(
    children: <Widget>[
    ButtonsTabBar(
    labelStyle:  const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    ),
    unselectedLabelStyle: const TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    ),
    // Add your tabs here
    tabs:  const [
    Tab(text: 'Bahria ',),
    Tab(text: 'Attock '),
    ],
    ),
      SizedBox(
        height: 400,
        child: TabBarView(children: [
          BahriaMembers(title: tabTitles[0]),
          AttockMembers(title: tabTitles[1]),



        ]),
      )
        ],
      ),
    )])]));
  }
}
