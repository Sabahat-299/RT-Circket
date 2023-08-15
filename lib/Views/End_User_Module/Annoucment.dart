
import 'package:flutter/material.dart';
import 'package:rt_cricket/Utils/appbackgroundcolor.dart';
import 'package:rt_cricket/Utils/appcontainercolor.dart';


import '../../Model/Anouncementlistmodel.dart';
import '../../Utils/Appimage.dart';
import '../../Widgets/AppTextStyle.dart';

class EndUserAnouncment extends StatefulWidget {
  const EndUserAnouncment({Key? key}) : super(key: key);

  @override
  State<EndUserAnouncment> createState() => _EndUserAnouncmentState();
}

class _EndUserAnouncmentState extends State<EndUserAnouncment> {
 List<AnouncmentListModel> data3 =[
   AnouncmentListModel(Text: 'Attock Won The Match', Time: '30m ago'),
   AnouncmentListModel(Text: 'Attock Won The Match', Time: '30m ago'),
   AnouncmentListModel(Text: 'Attock Won The Match', Time: '30m ago')
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppBackgroundColor.kblackColor,
      appBar: AppBar(
          iconTheme: const IconThemeData(
              color: Colors.white
          ),
        backgroundColor: AppContainerColor.kDarkGreyColor,
        title: TextWidget(title: 'Anouncment', fontSize: 13,color: Colors.white,)
      ),
      body: Column(
        children: [
          ListView.separated(
              shrinkWrap: true,
              itemCount: data3.length,
              separatorBuilder: (BuildContext context, int index) =>
              const Divider(height: 1,color: Colors.grey,),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image(
                      width: 40,
                      height: 40,
                      image:
                      AssetImage(AppImages.attockimage.toString())),
                  title:
                      Text(
                        data3[index].Text.toString(),
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),



                  subtitle:Text(
                    data3[index].Time.toString(),
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

    );
  }
}
