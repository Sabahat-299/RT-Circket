import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Model/Mostrunsmodel.dart';
import '../../Utils/Appimage.dart';
import '../../Utils/appcontainercolor.dart';
import '../../Widgets/AppTextStyle.dart';

class Summary extends StatefulWidget {
  const Summary({Key? key, required String title}) : super(key: key);

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  List<MostRunsListModel> data8 = [
    MostRunsListModel(PlayerNames: 'PlayerNames', Runs: 'Runs', Matches: 'Matches', Average: 'Average'
    ),
    MostRunsListModel(PlayerNames: 'Tayyab', Runs: '2500', Matches: '54', Average: '108.51'
    ),
    MostRunsListModel(PlayerNames: 'kaif', Runs: '1800', Matches: '24', Average: '108.51'

    ),
    MostRunsListModel(PlayerNames: 'Karam', Runs: '1600', Matches: '25', Average: '108.51'

    ),
  ];
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12,),
            Container(
              height: 145,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                color: AppContainerColor.kDarkGreyColor,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: data8.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 28,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              AppContainerColor.kLightGreyColor,
                              AppContainerColor.kDarkGreyColor,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width*0.25,
                                child: Text(
                                  data8[index].PlayerNames.toString(),
                                  style: const TextStyle(
                                    fontSize: 8,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width*0.25,
                                child: Text(
                                  data8[index].Runs.toString(),
                                  style: const TextStyle(
                                      fontSize: 8, color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width*0.25,
                                child: Text(
                                  data8[index].Matches.toString(),
                                  style: const TextStyle(
                                      fontSize: 8, color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width*0.1,
                                child: Text(
                                  data8[index].Average.toString(),
                                  style: const TextStyle(
                                      fontSize: 8, color: Colors.white),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
const SizedBox(height: 11,),
Row(
  children: [
          Container(
        width: 90,
        height: 100,
        decoration:  BoxDecoration(
          gradient: const LinearGradient(colors: [
            AppContainerColor.kDarkGreyColor,
            AppContainerColor.kLightGreyColor
          ]),
          borderRadius: BorderRadius.circular(12),
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.wine_bar_sharp,color: Colors.white,size: 40,),
            TextWidget(title: '24',color: Colors.white,fontSize:8,),
            const SizedBox(width: 50,),
            TextWidget(title: 'Matches',color: Colors.white,fontSize:8,),
          ],
        ),

          )
          ],
        ),
            const SizedBox(height: 12,),
            Container(
              width: 360,
              height: 145,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                color: AppContainerColor.kDarkGreyColor,
              ),
child: Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
          TextWidget(title: 'BONDRIES',color: Colors.white,),
  Row(
    children: [
      Container(
        width: 150,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.purple,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextWidget(title: '24',color: Colors.white,fontSize:15,),
            const SizedBox(width: 50,),
            TextWidget(title: 'Fours',color: Colors.white,fontSize:15,),
          ],
        ),

      ),
      SizedBox(width: 15,),
      Container(
        width: 150,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.green,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextWidget(title: '26',color: Colors.white,fontSize:15,),
            const SizedBox(width: 50,),
            TextWidget(title: 'Sixes',color: Colors.white,fontSize:15,),
          ],
        ),
      )
    ],
  )],
  ),
),
            ),
    ]),
      ));
  }
}
