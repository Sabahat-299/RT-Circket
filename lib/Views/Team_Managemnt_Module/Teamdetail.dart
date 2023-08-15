import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:rt_cricket/Utils/Appcolor.dart';
import 'package:rt_cricket/Utils/Appimage.dart';
import 'package:rt_cricket/Utils/appbackgroundcolor.dart';

import '../../Utils/appcontainercolor.dart';
import '../../Widgets/AppTextStyle.dart';
import '../../Widgets/App_Icon Button.dart';
import 'M_Matches.dart';
import 'M_Players.dart';
import 'M_Summay.dart';

class TeamDetail extends StatefulWidget {
  const TeamDetail({Key? key}) : super(key: key);

  @override
  State<TeamDetail> createState() => _TeamDetailState();
}
final List<String> tabTitles = ['Summary','Matches','Player' ];
class _TeamDetailState extends State<TeamDetail> {
  List<String> listofcity =['Multan',];
  List<String> listoflocation =['Multan,Rawalpind',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppBackgroundColor.kblackColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(
            color: Colors.white
        ),
        backgroundColor: AppContainerColor.kDarkGreyColor,
        title: TextWidget(title:'Live', fontSize: 15,color: Colors.white,),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: 380,
            height: 200,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                AppContainerColor.kDarkGreyColor,
                AppContainerColor.kLightGreyColor
              ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int index){
                          return ListTile(
                            leading: Image(image: AssetImage(AppImages.multanimage.toString()),),
                            title: TextWidget(title: listofcity[index],color: Colors.white,) ,
                            subtitle: TextWidget(title: listoflocation[index],color: Colors.white),
                            trailing: AppIconButton(
                              onPressed: () {
                              },
                              icon: Icons.edit,
                            ),
                          );
                        }
                    ),
                  ),
                  const SizedBox(height: 15,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextWidget(title: 'Win Percentage',fontSize: 12,color: Colors.grey,),
                      TextWidget(title: 'Team Player',fontSize: 12,color: Colors.grey,),
                      TextWidget(title: 'Last Match',fontSize: 12,color: Colors.grey,),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextWidget(title: '92.12%',fontSize: 12,color: Colors.white,fontWeight: FontWeight.bold,),
                        TextWidget(title: '10',fontSize: 12,color: Colors.white,fontWeight: FontWeight.bold,),
                        TextWidget(title: '08-04-23',fontSize: 12,color: Colors.white,fontWeight: FontWeight.bold,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12,),
          DefaultTabController(
            length: tabTitles.length,
            initialIndex: 0,
            child: Column(
              children: <Widget>[
                ButtonsTabBar(
                  backgroundColor: AppColor.kPurpleColor,
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  unselectedLabelStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  unselectedBackgroundColor: AppContainerColor.kDarkGreyColor,
                  // Add your tabs here
                  tabs: const [
                    Tab(text: 'Summary'),
                    Tab(text: 'Matches'),
                    Tab(text: 'Players'),
                  ],
                ),
                SizedBox(
                  height: 360,
                  child: TabBarView(children: [
                    Summary(title: tabTitles[0]),
                    Matches(title: tabTitles[1]),
                    Players(title: tabTitles[2]),

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
