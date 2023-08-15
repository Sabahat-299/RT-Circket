import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Utils/Appcolor.dart';
import '../../../Utils/Appimage.dart';
import '../../../Utils/appbackgroundcolor.dart';
import '../../../Utils/appcontainercolor.dart';
import '../../../Widgets/AppTextStyle.dart';
import '../../../Widgets/AppTextfield.dart';

class MStreaming extends StatefulWidget {
  const MStreaming({Key? key}) : super(key: key);

  @override
  State<MStreaming> createState() => _MStreamingState();
}

class _MStreamingState extends State<MStreaming> {
  var C1NameText = TextEditingController();
  var C1UrlText = TextEditingController();
  var C2NameText = TextEditingController();
  var C2UrlText = TextEditingController();
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
          title: "Streaming",
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
              padding: const EdgeInsets.all(5.0),
              child: TextWidget(
                title: 'Camera 1',
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
                  controller: C1NameText,
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
                  hintText: ' URL',
                  controller: C1UrlText,
                  obscureText: false,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 120,
                height: 100,
                decoration:  BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20)
                ),
                  child: const Image(image: AssetImage(AppImages.Cimage),
                    fit: BoxFit.cover,
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextWidget(
                title: 'Camera 2',
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
                  controller: C2NameText,
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
                  hintText: ' URL',
                  controller: C2UrlText,
                  obscureText: false,
                ),
              ),
            ),
            Container(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){

                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    gradient:   const LinearGradient(
                      colors: [AppColor.kPurpleColor, AppColor.kLightPurpleColor],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                      child: TextWidget(
                        title: 'Add Another Camera',
                        color: Colors.white,
                        fontSize: 13,
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
