import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Utils/Appcolor.dart';
import '../../../Utils/Appimage.dart';
import '../../../Utils/appbackgroundcolor.dart';
import '../../../Utils/appcontainercolor.dart';
import '../../../Widgets/AppTextStyle.dart';
import '../../../Widgets/AppTextfield.dart';

class MCommentry extends StatefulWidget {
  const MCommentry({Key? key}) : super(key: key);

  @override
  State<MCommentry> createState() => _MCommentryState();
}

class _MCommentryState extends State<MCommentry> {
  var NameText = TextEditingController();
  var AutoUrlText = TextEditingController();
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
          title: "Commentry",
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
              height:120,
              decoration:  const BoxDecoration(
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
                              title: '0.2 / 20 Overs',
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
                              title: '0/0',
                              color: Colors.white,
                              fontSize: 12,
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
                  ],
                ),
              ),
            ),
            Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextWidget(
                    title: 'Add Commentator',
                    fontSize: 14,
                    color: Colors.white,
                  ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: AppContainerColor.kDarkGreyColor,
                    borderRadius: BorderRadius.circular(15)),
                child: MyTextField(
                  hintText: ' Name',
                  controller: NameText,
                  obscureText: false,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: AppContainerColor.kDarkGreyColor,
                    borderRadius: BorderRadius.circular(15)),
                child: MyTextField(
                  hintText: 'Auto URL',
                  controller: AutoUrlText,
                  obscureText: false,
                ),
              ),
            ),
            Container(
              height: 280,
            ),
            InkWell(
              onTap: (){
                // Get.to(CreateNewTeam1());
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      gradient:  const LinearGradient(
                        colors: [AppColor.kPurpleColor, AppColor.kLightPurpleColor],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                        child: TextWidget(
                          title: 'Add',
                          color: Colors.white,
                          fontSize: 13,
                        )),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
