
import 'package:flutter/material.dart';
import 'package:rt_cricket/Utils/Appcolor.dart';
import 'package:rt_cricket/Utils/appcontainercolor.dart';
import 'package:rt_cricket/Widgets/AppTextStyle.dart';

import '../../Model/Discussionmlistmodel.dart';
import '../../Utils/Appimage.dart';

class Discussion extends StatefulWidget {
  const Discussion({Key? key, required String title}) : super(key: key);

  @override
  State<Discussion> createState() => _DiscussionState();
}


class _DiscussionState extends State<Discussion> {
  List<DiscussionListModel> data2 = [
    DiscussionListModel( Names:'Abrar', Chat:'Attock will gonna win today!', Time: '2m ago'
    ),
    DiscussionListModel( Names:'Khawar', Chat:'Attock will gonna win today!', Time: '2m ago'
    ),
    DiscussionListModel( Names:'Hamza', Chat:'Attock will gonna win today!', Time: '2m ago'
    )

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          ListView.separated(
              shrinkWrap: true,
           itemCount: data2.length,
          separatorBuilder: (BuildContext context, int index) =>
           const Divider(height: 1,color: Colors.grey,),
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
        const SizedBox(height: 88,),
        Container(
          width: 350,
          height: 45,
          decoration: BoxDecoration(
            color: AppContainerColor.kDarkGreyColor,
                borderRadius: BorderRadius.circular(10),

          ),
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                TextWidget(title: 'Write your message here',fontSize: 13,color: Colors.white,),
                const SizedBox(width: 120,),
                const Icon(Icons.send,color: AppColor.kLightPurpleColor,)
              ],
            ),
          )
        )
      ],
    );
  }
}

