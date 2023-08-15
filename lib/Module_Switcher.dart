import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rt_cricket/Utils/appbackgroundcolor.dart';
import 'package:rt_cricket/Utils/appcontainercolor.dart';
import 'package:rt_cricket/Widgets/AppTextStyle.dart';

import 'Views/End_User_Module/End_user Dashboard.dart';
import 'Views/Match_Manager_Module/Match_ Manager Dashboard.dart';
import 'Views/Team_Managemnt_Module/Team_Management Dashboard.dart';

class ModuleSwitcher extends StatefulWidget {
  const ModuleSwitcher({Key? key}) : super(key: key);

  @override
  State<ModuleSwitcher> createState() => _ModuleSwitcherState();
}

class _ModuleSwitcherState extends State<ModuleSwitcher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppBackgroundColor.kblackColor,
      appBar: AppBar(
        backgroundColor: AppBackgroundColor.kblackColor,
        title:  TextWidget(title:"Module Switcher",color: Colors.white,fontSize: 16,),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
                onTap: (){
                  Get.to(const EndUserDashboard());
                  },
                child: Container(
                  width: 300,
                  height: 100,
                  decoration:  BoxDecoration(
                    gradient: const LinearGradient(colors:[
                      AppContainerColor.kDarkGreyColor,
                      AppContainerColor.kLightGreyColor
                    ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius:BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: TextWidget(title:"User End Module",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,color: Colors.white,),
                  ),
                ),
            ),
          ),
          const SizedBox(height: 15,),
          InkWell(
            onTap: (){
              Get.to(const TMDashboard());
            },
            child: Container(
              width: 300,
              height: 100,
              decoration:  BoxDecoration(
                gradient: const LinearGradient(colors:[
                  AppContainerColor.kDarkGreyColor,
                  AppContainerColor.kLightGreyColor
                ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius:BorderRadius.circular(10),
              ),
              child: Center(

                child: TextWidget(title:"Team Management Module",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,color: Colors.white,),
              ),

            ),
          ),
          const SizedBox(height: 15,),
          InkWell(
            onTap: (){
              Get.to(const MatchManagerDashboard());
            },
            child: Container(
              width: 300,
              height: 100,
              decoration:  BoxDecoration(
                gradient: const LinearGradient(colors:[
                  AppContainerColor.kDarkGreyColor,
                  AppContainerColor.kLightGreyColor
                ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius:BorderRadius.circular(10),
              ),
              child: Center(
                child: TextWidget(title:"Match Manager Module",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,color: Colors.white,),
              ),

            ),
          ),

        ],
      ),
    );
  }
}
