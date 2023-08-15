import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rt_cricket/Views/Team_Managemnt_Module/teamdetail.dart';
import '../../Utils/Appcolor.dart';
import '../../Utils/appbackgroundcolor.dart';
import '../../Utils/appcontainercolor.dart';
import '../../Widgets/AppTextStyle.dart';
import 'M_Summay.dart';

class CreateNewTeam1 extends StatefulWidget {
  const CreateNewTeam1({Key? key}) : super(key: key);

  @override
  State<CreateNewTeam1> createState() => _CreateNewTeam1State();
}

class _CreateNewTeam1State extends State<CreateNewTeam1> {
  var TeamNameText = TextEditingController();
  var HomGroundNameText = TextEditingController();
  String? selectedValue1; // Remove the initial value 'select'
  String? selectedValue2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppBackgroundColor.kblackColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: AppContainerColor.kDarkGreyColor,
        title: TextWidget(
            title: 'Create New Account', color: Colors.white, fontSize: 15),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              TextWidget(
                title: 'Add Player',
                color: Colors.white,
              ),
              Container(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                      width: 180,
                      height: 50,
                    decoration: BoxDecoration(
                        color: AppContainerColor.kDarkGreyColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: TextWidget(title: '',)
                  ),
                   SizedBox(width: 20,),
                  Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                        color: AppContainerColor.kDarkGreyColor,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        dropdownColor: AppContainerColor.kLightGreyColor,
                        value: selectedValue1,
                        onChanged: (newValue) {
                          setState(() {
                            selectedValue1 = newValue!;
                          });
                        },
                        items: <String>[
                          'Bowler',
                          'Batter',
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,style: const TextStyle(color: Colors.white,fontSize: 12),),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    width: 180,
                      height: 50,
                      decoration: BoxDecoration(
                          color: AppContainerColor.kDarkGreyColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: TextWidget(title: '',)
                  ),
                  const SizedBox(width: 20,),
                  Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppContainerColor.kDarkGreyColor,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        dropdownColor: AppContainerColor.kLightGreyColor,
                        value: selectedValue2,
                        onChanged: (newValue) {
                          setState(() {
                            selectedValue2 = newValue!;
                          });
                        },
                        items: <String>[
                          'Select',
                          'Choice A',



                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,style: const TextStyle(color: Colors.white,fontSize: 12),),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 13,),
              InkWell(
                onTap: (){
                  },
                child: Container(
                  height: 50,
                  width: 170,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [AppColor.kPurpleColor, AppColor.kLightPurpleColor],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                      child: TextWidget(
                        title: 'Add New Player',
                        color: Colors.white,
                        fontSize: 13,
                      )),
                ),
              ),
              Container(
                height: 330,
              ),
              InkWell(
                onTap: (){
                  Get.to(const TeamDetail());
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [AppColor.kPurpleColor, AppColor.kLightPurpleColor],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                      child: TextWidget(
                        title: 'Create',
                        color: Colors.white,
                        fontSize: 13,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
