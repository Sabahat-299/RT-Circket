import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Model/Discussionmlistmodel.dart';
import '../../../Utils/Appimage.dart';
import '../../../Utils/appbackgroundcolor.dart';
import '../../../Utils/appcontainercolor.dart';
import '../../../Widgets/AppTextStyle.dart';

class MDiscussion extends StatefulWidget {
  const MDiscussion({Key? key}) : super(key: key);

  @override
  State<MDiscussion> createState() => _MDiscussionState();
}
List<DiscussionListModel> data2 = [
  DiscussionListModel( Names:'Abrar', Chat:'Attock will gonna win today!', Time: '2m ago'
  ),
  DiscussionListModel( Names:'Khawar', Chat:'Attock will gonna win today!', Time: '2m ago'
  ),
  DiscussionListModel( Names:'Hamza', Chat:'Attock will gonna win today!', Time: '2m ago'
  )

];


class _MDiscussionState extends State<MDiscussion> {
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
          title: "Discussion",
          fontSize: 15,
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
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
            ListView.builder(
                shrinkWrap: true,
                itemCount: data2.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Image(
                        width: 40,
                        height: 40,
                        image:
                        AssetImage(AppImages.Barihaimage.toString())),
                    title:  Row(
                      children: [
                        Text(
                          data2[index].Names.toString(),
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 11,),
                        Text(
                          data2[index].Time.toString(),
                          style: const TextStyle(
                            fontSize: 9,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    subtitle:Text(
                      data2[index].Chat.toString(),
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}
