import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Model/BahriaPlayerlistmodel.dart';

class BahriaMembers extends StatefulWidget {
  const BahriaMembers({Key? key, required String title}) : super(key: key);

  @override
  State<BahriaMembers> createState() => _BahriaMembersState();
}

class _BahriaMembersState extends State<BahriaMembers> {
  List<BahriaPlayerListModel> data4 =[
    BahriaPlayerListModel(
        PlayerName: 'PlayerName',
        Role: 'Roles'

    ),
    BahriaPlayerListModel(
        PlayerName: 'M.Ali',
        Role: 'Batsman'

    ),
    BahriaPlayerListModel(
        PlayerName: 'M.Ali',
        Role: 'Batsman'

    ),
    BahriaPlayerListModel(
        PlayerName: 'M.Ali',
        Role: 'Batsman'

    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(

        children: [
          ListView.separated(
              shrinkWrap: true,
              itemCount: data4.length,
              separatorBuilder: (BuildContext context, int index) =>
              const Divider(height: 1,color: Colors.grey,),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Text(
                    data4[index].PlayerName.toString(),
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Text(
                    data4[index].Role.toString(),
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
