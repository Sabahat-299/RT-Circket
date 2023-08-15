import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Utils/Appimage.dart';
import '../../../Utils/appbackgroundcolor.dart';
import '../../../Utils/appcontainercolor.dart';
import '../../../Widgets/AppTextStyle.dart';

class RawalpindiGround extends StatefulWidget {
  const RawalpindiGround({Key? key}) : super(key: key);

  @override
  State<RawalpindiGround> createState() => _RawalpindiGroundState();
}

class _RawalpindiGroundState extends State<RawalpindiGround> {
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
              Container(
                  width: 350,
                  height: 190,
                  decoration:  BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Image(image: AssetImage(AppImages.BGimage),
                    fit: BoxFit.cover,
                  )
              ),
              const SizedBox(height: 11,),
              TextWidget(
                title: "Rawalpind Ground",
                fontSize: 12,
                color: Colors.white,
              ),
              const SizedBox(height: 11,),
              TextWidget(title: 'Upcoming Matches',
                fontSize: 14,
                color: Colors.white,),
              const SizedBox(height: 11,),
              Container(
                width: 340,
                height: 100,
                decoration:  BoxDecoration(
                  gradient: const LinearGradient(colors:[
                    AppContainerColor.kLightGreyColor,
                    AppContainerColor.kDarkGreyColor,
                  ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius:BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(

                    children: [
                      const SizedBox(height: 11,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Image(
                                  width: 40,
                                  height: 40,
                                  image: AssetImage(
                                      AppImages.rawatimage.toString())),
                              TextWidget(title: 'Multan',fontSize: 14,color: Colors.white,)
                            ],
                          ),
                          const SizedBox(width: 11,),
                          Column(
                            children: [
                              TextWidget(title: 'MON 24 FEB',color: Colors.white,fontSize: 12,),
                              TextWidget(title: '09:30 PM',color: Colors.white,fontSize: 10,),
                            ],
                          ),

                          const SizedBox(width: 11,),
                          Column(
                            children: [
                              Image(
                                  width: 40,
                                  height: 40,
                                  image: AssetImage(
                                      AppImages.saddarimage.toString())),
                              TextWidget(title: 'Saddar',fontSize: 14,color: Colors.white,)
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                ),


              ),
              const SizedBox(height: 11,),
              Container(
                width: 340,
                height: 100,
                decoration:  BoxDecoration(
                  gradient:  const LinearGradient(colors:[
                    AppContainerColor.kLightGreyColor,
                    AppContainerColor.kDarkGreyColor,
                  ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius:BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(

                    children: [
                      const SizedBox(height: 11,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Image(
                                  width: 40,
                                  height: 40,
                                  image: AssetImage(
                                      AppImages.rawatimage.toString())),
                              TextWidget(title: 'Rawat',fontSize: 14,color: Colors.white,)
                            ],
                          ),
                          const SizedBox(width: 11,),
                          Column(
                            children: [
                              TextWidget(title: 'MON 25 FEB',color: Colors.white,fontSize: 12,),
                              TextWidget(title: '09:30 PM',color: Colors.white,fontSize: 10,),
                            ],
                          ),

                          const SizedBox(width: 11,),
                          Column(
                            children: [
                              Image(
                                  width: 40,
                                  height: 40,
                                  image: AssetImage(
                                      AppImages.saddarimage.toString())),
                              TextWidget(title: 'Saddar',fontSize: 14,color: Colors.white,)
                            ],
                          ),

                        ],
                      ),



                    ],
                  ),
                ),


              ),
            ],
          ),
        ),
      ),

    );
  }
}

