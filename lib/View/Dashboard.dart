import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:nri_vichola/Controller/DashboardController.dart';
import 'package:nri_vichola/Utils/ColorUtils.dart';
import 'package:nri_vichola/View/Dashboard/BookMark.dart';
import 'package:nri_vichola/View/Dashboard/SoulMeet.dart';

import 'Dashboard/Chat.dart';
import 'Dashboard/MyAccount.dart';
class DashBoard extends StatelessWidget {
  final DashboardController dashboardController=Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Obx(()=>_body(dashboardController.currentIndex.value)),
      bottomNavigationBar: Obx(()=>BottomNavigationBar(
        elevation: 10,
        unselectedItemColor: Colors.grey,
        selectedItemColor: ColorUtils.primaryColor,
        currentIndex: dashboardController.currentIndex.value, // this will be set when a new tab is tapped
        onTap: dashboardController.onTabChange,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(FontAwesomeIcons.userFriends),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
              label: ""

          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
              label: ""

          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
              label: ""



          )
        ],
      )),
    );
  }
  _body(int index){
    switch(index){
      case 0 :
        return SoulMeet();
        break;
      case 1 :
        return BookMark();
        break;
      case 2 :
        return Chat();
        break;
      case 3 :
        return MyAccount();
        break;
    }
  }
}
