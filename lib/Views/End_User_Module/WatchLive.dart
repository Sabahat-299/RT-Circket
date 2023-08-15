import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rt_cricket/Utils/appbackgroundcolor.dart';
import 'package:rt_cricket/Utils/appcontainercolor.dart';

import '../../Model/Batterlistmodel.dart';
import '../../Model/Bowlerlistmodel.dart';
import '../../Widgets/AppTextStyle.dart';

class WatchLive extends StatelessWidget {
  final String title;

  WatchLive({super.key, required this.title});
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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            children: [
              Container(
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
              const SizedBox(height: 15,),
              Container(
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
              Container(height: 12,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(title: 'Who Will Win?',fontSize: 13,color: Colors.white,),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 40,
                          decoration: BoxDecoration(
                            color: AppBackgroundColor.kblackColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.white, // Set the border color of the container
                              width: 1, // Set the border width of the container
                            ),
                          ),
                          child: Center(child: TextWidget(title: 'Attock',fontSize: 15,color: Colors.white,)),
                        ),
                        const SizedBox(width: 15,),
                        Container(
                          width: 150,
                          height: 40,
                          decoration: BoxDecoration(
                            color: AppBackgroundColor.kblackColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.white, // Set the border color of the container
                              width: 1, // Set the border width of the container
                            ),
                          ),
                          child: Center(child: TextWidget(title: 'Bahria',fontSize: 15,color: Colors.white,)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}