import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Model/Batterlistmodel.dart';
import '../../../Model/Bowlerlistmodel.dart';
import '../../../Utils/Appimage.dart';
import '../../../Utils/appbackgroundcolor.dart';
import '../../../Utils/appcontainercolor.dart';
import '../../../Widgets/AppTextStyle.dart';

class MScoreCard extends StatefulWidget {
  const MScoreCard({Key? key}) : super(key: key);

  @override
  State<MScoreCard> createState() => _MScoreCardState();
}
List<BatterListModel> data = [
  BatterListModel(
    Batters: 'Batters',
    Balls: 'Balls',
    Runs: 'Runs',
    sixth: '6s',
    fourth: '4s',
    SR: 'SR',
  ),
  BatterListModel(
    Batters: 'M.Ali',
    Balls: '26',
    Runs: '29',
    sixth: '1',
    fourth: '2',
    SR: '104.2',
  ),
  BatterListModel(
    Batters: 'A.Hamza ',
    Balls: '19',
    Runs: '4',
    sixth: '2',
    fourth: '1',
    SR: '104.2',
  ),
  BatterListModel(
    Batters: 'P’ship:21(16)',
    Balls: '',
    Runs: '',
    sixth: '',
    fourth: '',
    SR: '',
  )
];
List<BowlerListModel> data1 = [
  BowlerListModel(
      Bowler: 'Bowler', Wicket: 'Wicket', Runs: 'Runs', Overs: 'Overs', Econ: 'Econ'),
  BowlerListModel(
      Bowler: 'M.Ali', Wicket: '1', Runs: '2.3', Overs: '12', Econ: '5.08')
];


class _MScoreCardState extends State<MScoreCard> {
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
          title: "Score Card",
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
          decoration: const BoxDecoration(
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
            const SizedBox(height: 11,),
            Center(
              child: TextWidget(
                title: 'Bahira Won the Toss & Choose to Bat',
                color: Colors.white,
                fontSize: 13,
              ),
            ),
            const SizedBox(height: 11,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 145,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  color: AppContainerColor.kDarkGreyColor,
                ),
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: data.length,
                  separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(width: 2),
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
                          child: Center(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.38,
                                    child: Text(
                                      data[index].Batters.toString(),
                                      style: const TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.1,
                                    child: Text(
                                      data[index].Balls.toString(),
                                      style: const TextStyle(
                                          fontSize: 8, color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.1,
                                    child: Text(
                                      data[index].Runs.toString(),
                                      style: const TextStyle(
                                          fontSize: 8, color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.1,
                                    child: Text(
                                      data[index].sixth.toString(),
                                      style: const TextStyle(
                                          fontSize: 8, color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.1,
                                    child: Text(
                                      data[index].fourth.toString(),
                                      style: const TextStyle(
                                          fontSize: 8, color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.1,
                                    child: Text(
                                      data[index].SR.toString(),
                                      style: const TextStyle(
                                          fontSize: 8, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  color: AppContainerColor.kDarkGreyColor,
                ),
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: data1.length,
                  separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(width: 2),
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
                          child: Center(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.38,
                                    child: Text(
                                      data1[index].Bowler.toString(),
                                      style: const TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.1,
                                    child: Text(
                                      data1[index].Wicket.toString(),
                                      style: const TextStyle(
                                          fontSize: 8, color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.1,
                                    child: Text(
                                      data1[index].Runs.toString(),
                                      style: const TextStyle(
                                          fontSize: 8, color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.1,
                                    child: Text(
                                      data1[index].Overs.toString(),
                                      style: const TextStyle(
                                          fontSize: 8, color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.1,
                                    child: Text(
                                      data1[index].Econ.toString(),
                                      style: const TextStyle(
                                          fontSize: 8, color: Colors.white),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 9,),
            Container(
              height: 40,
              color: Colors.white, // You can adjust the height as needed
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(width: 2),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 300, // You can adjust the width of each item as needed
                    color: AppBackgroundColor.kblackColor,
                    child: Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.cyan, shape: BoxShape.circle),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextWidget(title: 'Select Score',fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white,),
            ),
            const SizedBox(
              height: 20
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextWidget(title: 'Extras',fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white,),
            ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppContainerColor.kDarkGreyColor,
                ),
                child: Center(child: TextWidget(title: 'NO BALL',fontSize: 12,color: Colors.white,)),
              ),
              const SizedBox(width: 11,),
              Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppContainerColor.kDarkGreyColor,
                ),
                child: Center(child: TextWidget(title: 'WIDE',fontSize: 12,color: Colors.white,)),
              ),
              const SizedBox(width: 11,),
              Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppContainerColor.kDarkGreyColor,
                ),
                child: Center(child: TextWidget(title: 'LEG BYE',fontSize: 12,color: Colors.white,)),
              ),
              const SizedBox(width: 11,),
              Container(
                height: 40,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppContainerColor.kDarkGreyColor,
                ),
                child: Center(child: TextWidget(title: 'BYE',fontSize: 12,color: Colors.white,)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextWidget(title: 'Dismissals',fontSize: 12,color: Colors.white,fontWeight: FontWeight.bold,),
        ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppContainerColor.kDarkGreyColor,
                    ),
                    child: Center(child: TextWidget(title: 'BOWLED',fontSize: 12,color: Colors.white,)),
                  ),
                  const SizedBox(width: 11,),
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppContainerColor.kDarkGreyColor,
                    ),
                    child: Center(child: TextWidget(title: 'LBW',fontSize: 12,color: Colors.white,)),
                  ),
                  const SizedBox(width: 11,),
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppContainerColor.kDarkGreyColor,
                    ),
                    child: Center(child: TextWidget(title: 'CAUGHT',fontSize: 12,color: Colors.white,)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextWidget(title: 'Dismissals',fontSize: 12,color: Colors.white,fontWeight: FontWeight.bold,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppContainerColor.kDarkGreyColor,
                    ),
                    child: Center(child: TextWidget(title: 'NON-STRIKER RUN OUT',fontSize: 12,color: Colors.white,)),
                  ),
                  SizedBox(width: 11,),
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppContainerColor.kDarkGreyColor,
                    ),
                    child: Center(child: TextWidget(title: 'RUN OUT',fontSize: 12,color: Colors.white,)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppContainerColor.kDarkGreyColor,
                    ),
                    child: Center(child: TextWidget(title: 'STUMP',fontSize: 12,color: Colors.white,)),
                  ),
                  const SizedBox(width: 11,),
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppContainerColor.kDarkGreyColor,
                    ),
                    child: Center(child: TextWidget(title: 'HIT W.K',fontSize: 12,color: Colors.white,)),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
