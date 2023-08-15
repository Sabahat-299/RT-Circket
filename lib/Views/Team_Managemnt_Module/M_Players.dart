import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Model/Playerlistmodel.dart';
import '../../Widgets/App_Icon Button.dart';

class Players extends StatefulWidget {
  const Players({Key? key, required String title}) : super(key: key);

  @override
  State<Players> createState() => _PlayersState();
}

class _PlayersState extends State<Players> {
List<PlayerListModel> data7 = [
  PlayerListModel(PlayerName: 'PlayerName',
      Role: 'Roles'

  ),
  PlayerListModel(PlayerName: 'M.Ali',
      Role: 'Batsman'

  ),
  PlayerListModel(PlayerName: 'M.Ali',
      Role: 'Batsman'

  ),
  PlayerListModel(PlayerName: 'M.Ali',
Role: 'Batsman')
];
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(

        children: [
          Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                itemCount: data7.length,
                separatorBuilder: (BuildContext context, int index) =>
                const Divider(height: 1,color: Colors.grey,),
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.3,
                          child: Text(
                            data7[index].PlayerName.toString(),
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.3,
                          child: Text(
                            data7[index].Role.toString(),
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.3,
                          child: AppIconButton(
                          onPressed: () {
                  },
                          icon: Icons.edit,
                         ),
                         )

                      ],
                    ),
                  );
                }
            ),
          ),

        ],
      ),
    );
  }
}
