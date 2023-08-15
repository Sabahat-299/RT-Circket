import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rt_cricket/Utils/Appcolor.dart';

import '../../Utils/appcontainercolor.dart';
import '../Teamscore/Attockteam.dart';
import '../Teamscore/Bahriateam.dart';

class ScoreCard extends StatefulWidget {
  const ScoreCard({Key? key, required String title}) : super(key: key);

  @override
  State<ScoreCard> createState() => _ScoreCardState();
}
final List<String> tabTitles = ['Bahria', 'Attock', ];
class _ScoreCardState extends State<ScoreCard> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          DefaultTabController(
            length: tabTitles.length,
            initialIndex: 0,
            child: Column(
              children: <Widget>[
                ButtonsTabBar(
                  backgroundColor: AppColor.kPurpleColor,
                  borderWidth: 1,
                  buttonMargin: EdgeInsets.symmetric(horizontal: 10,),
                  labelStyle:  const TextStyle(
                      color: Colors.white,

                      fontWeight: FontWeight.bold,
                    ),
                    unselectedLabelStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  unselectedBackgroundColor: AppContainerColor.kDarkGreyColor,
                    unselectedBorderColor: Colors.white,
                    tabs:  const [
                      Tab(text: 'Bahria ',),
                      Tab(text: 'Attock '),
                    ],
                  ),
                 SizedBox(
                  height: 400,
                  child: TabBarView(children: [
                    BahriaTeam(title: tabTitles[0]),
                    AttockTeam(title: tabTitles[1]),



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
