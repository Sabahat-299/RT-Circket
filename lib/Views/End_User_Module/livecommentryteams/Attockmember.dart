import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Model/AttockPlayerlistmodel.dart';

class AttockMembers extends StatefulWidget {
  const AttockMembers({Key? key, required String title}) : super(key: key);

  @override
  State<AttockMembers> createState() => _AttockMembersState();
}

class _AttockMembersState extends State<AttockMembers> {
  List<AttockPlayerListModel> data5 =[
  AttockPlayerListModel(
  PlayerName: 'PlayerName',
  Role: 'Roles'

  ),
  AttockPlayerListModel(
  PlayerName: 'M.Ali',
  Role: 'Batsman'

  ),
  AttockPlayerListModel(
  PlayerName: 'M.Ali',
  Role: 'Batsman'

  ),
  AttockPlayerListModel(
  PlayerName: 'M.Ali',
  Role: 'Batsman'

  ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.separated(
            shrinkWrap: true,
            itemCount: data5.length,
            separatorBuilder: (BuildContext context, int index) =>
            const Divider(height: 1,color: Colors.grey,),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Text(
                  data5[index].PlayerName.toString(),
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                trailing: Text(
                  data5[index].Role.toString(),
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),

              );
            }
        ),
      ],
    );
  }
}

