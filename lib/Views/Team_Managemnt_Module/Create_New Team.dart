import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rt_cricket/Utils/Appcolor.dart';
import 'package:rt_cricket/Utils/Appimage.dart';
import 'package:rt_cricket/Utils/appbackgroundcolor.dart';
import 'package:rt_cricket/Utils/appcontainercolor.dart';
import 'package:rt_cricket/Views/Team_Managemnt_Module/Create_New%20Team1.dart';
import 'package:rt_cricket/Widgets/AppTextStyle.dart';

import '../../Provider/Createteamprovider.dart';
import '../../Widgets/AppTextfield.dart';

class CreateNewTeam extends StatefulWidget {
  const CreateNewTeam({Key? key}) : super(key: key);

  @override
  State<CreateNewTeam> createState() => _CreateNewTeamState();
}

class _CreateNewTeamState extends State<CreateNewTeam> {
  var TeamNameText = TextEditingController();
  var HomGroundNameText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppBackgroundColor.kblackColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: AppContainerColor.kDarkGreyColor,
        title: TextWidget(
            title: 'Create New Account', color: Colors.white, fontSize: 15),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50, // Adjust the radius as needed
                      backgroundImage: AssetImage(AppImages.profileimage
                          .toString()), // Replace with your image
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TextWidget(
                title: 'Team Info',
                color: Colors.white,
              ),
              Container(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppContainerColor.kDarkGreyColor,
                    borderRadius: BorderRadius.circular(15)),
                child: MyTextField(
                  hintText: 'Team Name',
                  controller: TeamNameText,
                  obscureText: false,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppContainerColor.kDarkGreyColor,
                    borderRadius: BorderRadius.circular(15)),
                child: MyTextField(
                  hintText: 'Home Ground Name',
                  controller: HomGroundNameText,
                  obscureText: false,
                ),
              ),
              Container(
                height: 265,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [AppColor.kPurpleColor, AppColor.kLightPurpleColor],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                    child: TextWidget(
                  title: 'Next',
                  color: Colors.white,
                  fontSize: 13,
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
