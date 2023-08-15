import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Model/Batterlistmodel.dart';
import '../../Model/Bowlerlistmodel.dart';
import '../../Utils/appcontainercolor.dart';
import '../../Widgets/AppTextStyle.dart';

class BahriaTeam extends StatefulWidget {
  const BahriaTeam({Key? key, required String title}) : super(key: key);

  @override
  State<BahriaTeam> createState() => _BahriaTeamState();
}

class _BahriaTeamState extends State<BahriaTeam> {
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
      Batters: 'A.Hamza ',
      Balls: '19',
      Runs: '4',
      sixth: '2',
      fourth: '1',
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
      Batters: 'M.Ali',
      Balls: '26',
      Runs: '29',
      sixth: '1',
      fourth: '2',
      SR: '104.2',
    ),
    BatterListModel(
      Batters: 'M.Ali',
      Balls: '26',
      Runs: '29',
      sixth: '1',
      fourth: '2',
      SR: '104.2',
    ),
  ];
  List<BowlerListModel> data1 = [
    BowlerListModel(
        Bowler: 'Bowler', Wicket: 'Wicket', Runs: 'Runs', Overs: 'Overs', Econ: 'Econ'),
    BowlerListModel(
        Bowler: 'M.Ali', Wicket: '1', Runs: '2.3', Overs: '12', Econ: '5.08'),
    BowlerListModel(
        Bowler: 'M.Ali', Wicket: '1', Runs: '2.3', Overs: '12', Econ: '5.08'),
    BowlerListModel(
        Bowler: 'M.Ali', Wicket: '1', Runs: '2.3', Overs: '12', Econ: '5.08')

  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.separated(
            shrinkWrap: true,
            itemCount: data.length,
            separatorBuilder: (BuildContext context, int index) =>
            const Divider(height: 1,color: Colors.grey,),
            itemBuilder: (BuildContext context, int index) {
              return  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.33,
                            child: Text(
                              data[index].Batters.toString(),
                              style: const TextStyle(
                                fontSize: 8,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.13,
                            child: Text(
                              data[index].Balls.toString(),
                              style: const TextStyle(
                                  fontSize: 8, color: Colors.white),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.13,
                            child: Text(
                              data[index].Runs.toString(),
                              style: const TextStyle(
                                  fontSize: 8, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.13,
                            child: Text(
                              data[index].sixth.toString(),
                              style: const TextStyle(
                                  fontSize: 8, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.13,
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
                  );


            },
          ),
          Container(height: 11,),
          TextWidget(title: 'YET TO BAT:Kaif - Kashif - Kinhan',fontSize: 12,color: Colors.grey,),
          Container(height: 11,),
          ListView.separated(
            shrinkWrap: true,
            itemCount: data1.length,
            separatorBuilder: (BuildContext context, int index) =>
            const Divider(height: 1,color: Colors.grey,),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.35,
                            child: Text(
                              data1[index].Bowler.toString(),
                              style: const TextStyle(
                                fontSize: 9,

                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.16,
                            child: Text(
                              data1[index].Wicket.toString(),
                              style: const TextStyle(
                                  fontSize: 8, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.16,
                            child: Text(
                              data1[index].Runs.toString(),
                              style: const TextStyle(
                                  fontSize: 8, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.16,
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
                  );


            },
          ),
        ],
      ),
    );
  }
}
