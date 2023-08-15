import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rt_cricket/Views/Match_Manager_Module/Grounds/Bahria%20_Town%20_Ground.dart';

import '../../../Utils/Appimage.dart';
import '../../../Utils/appbackgroundcolor.dart';
import '../../../Utils/appcontainercolor.dart';
import '../../../Widgets/AppTextStyle.dart';
import '../Grounds/Lahore_Ground.dart';
import '../Grounds/Rawalpindi _Ground.dart';

class MGroundVenue extends StatefulWidget {
  const MGroundVenue({Key? key}) : super(key: key);

  @override
  State<MGroundVenue> createState() => _MGroundVenueState();
}

class _MGroundVenueState extends State<MGroundVenue> {
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
          title: "Ground Venue",
          fontSize: 15,
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                title: "Grounds",
                fontSize: 13,
                color: Colors.white,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Get.to(const BahriaGrounds());
                    },
                    child: Container(
                        width: 150,
                        height: 100,
                        decoration:  BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Image(image: AssetImage(AppImages.BGimage),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                const SizedBox(width: 35,),
                  InkWell(
                    onTap: (){
                      Get.to(const RawalpindiGround());
                    },
                    child: Container(
                        width: 150,
                        height: 100,
                        decoration:  BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Image(image: AssetImage(AppImages.RGimage),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                ],
              ),
 const SizedBox(height: 11,),
              Row(
                children: [
                  const SizedBox(width: 56,),
                  TextWidget(
                    title: "Bahria",
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 100,),

                  TextWidget(
                    title: "Rawalpindi",
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(height: 11,),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Get.to(const LahoreGround());
                    },
                    child: Container(
                        width: 150,
                        height: 100,
                        decoration:  BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Image(image: AssetImage(AppImages.RGimage),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                  const SizedBox(width: 35,),
                  InkWell(
                    onTap: (){
                      Get.to(const BahriaGrounds());
                    },
                    child: Container(
                        width: 150,
                        height: 100,
                        decoration:  BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Image(image: AssetImage(AppImages.BGimage),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 11,),
              Row(
                children: [
                  const SizedBox(width: 56,),
                  TextWidget(
                    title: "Lahore",
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 110,),

                  TextWidget(
                    title: "Bahria",
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
