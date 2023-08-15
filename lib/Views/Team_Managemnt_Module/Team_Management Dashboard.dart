
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rt_cricket/Utils/Appcolor.dart';

import '../../Model/teamslistmodel.dart';
import '../../Utils/Appimage.dart';
import '../../Utils/appbackgroundcolor.dart';
import '../../Widgets/AppTextStyle.dart';
import '../../Widgets/App_Icon Button.dart';
import '../../Widgets/floatinggrediantbutton.dart';
import 'Create_New Team.dart';

class TMDashboard extends StatefulWidget {
  const TMDashboard({Key? key}) : super(key: key);

  @override
  State<TMDashboard> createState() => _TMDashboardState();
}

class _TMDashboardState extends State<TMDashboard> {
  List<TeamListModel> data6 = [
    TeamListModel(
      TeamName: 'Multan',
      Loction: 'Multan, Pakistan',
    ),
    TeamListModel(
      TeamName: 'Attock',
      Loction: 'Attock, Pakistan,',
    ),
    TeamListModel(
      TeamName: 'Sadar',
      Loction: 'Saddar, Pakistan',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppBackgroundColor.kblackColor,
      appBar: AppBar(
        backgroundColor: AppBackgroundColor.kblackColor,
        title: TextWidget(
          title: "Roof Top Cricket",
          fontSize: 15,
          color: Colors.white,
        ),
        centerTitle: true,
        actions: [
          AppIconButton(
            onPressed: () {},
            icon: Icons.doorbell_outlined,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              title: 'Teams',
              fontSize: 12,
              color: Colors.white,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: data6.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                    leading: Image(
                      width: 40,
                      height: 40,
                      image: AssetImage(AppImages.attockimage.toString()),
                    ),
                    title: TextWidget(
                      title: data6[index].TeamName,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                    subtitle: Row(
                      children: [
                        TextWidget(
                          title: data6[index].Loction,
                          fontSize: 12,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 50),
                        Container(
                          width: 60,
                          height: 15,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              AppColor.kPurpleColor,
                              AppColor.kLightPurpleColor,
                            ]),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: TextWidget(
                              title: '10 Player',
                              fontSize: 8,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    trailing: AppIconButton(
                      onPressed: () {
                        Get.to(const CreateNewTeam());
                      },
                      icon: Icons.edit,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: GradientFloatingActionButton(
        gradient: const LinearGradient(
          colors: [AppColor.kPurpleColor,
            AppColor.kLightPurpleColor], // Define your gradient colors here
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        size: 56.0, // Set the size of the button
        onPressed: () {
          // Add your action here
          print('Floating button pressed!');
        },
        child: const Icon(Icons.add,color: Colors.white,),
      ),

    );
  }
}
