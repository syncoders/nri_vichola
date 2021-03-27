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
    return Obx(()=>Scaffold(
       appBar: _appBar(dashboardController.currentIndex.value),
      backgroundColor: Colors.grey[100],
      body: Obx(()=>body(dashboardController.currentIndex.value)),
      bottomNavigationBar: Obx(()=>BottomNavigationBar(
        elevation: 10.0,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
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
              icon: new Icon(FontAwesomeIcons.solidBookmark),
              label: ""

          ),
          BottomNavigationBarItem(
              icon: new Icon(FontAwesomeIcons.solidComments),
              label: ""

          ),
          BottomNavigationBarItem(
              icon: new Icon(FontAwesomeIcons.userAlt),
              label: ""



          )
        ],
      )),
    ));
  }


  _appBar(int index){
    switch(index){
      case 0 :
        return AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 1,
          centerTitle: false,
          title: Text("SoulMeet",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black)),actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text("Set preference",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: ColorUtils.primaryColor),)),
            )
        ],);
        break;
      case 1 :
        return AppBar(
          automaticallyImplyLeading: false,

          elevation: 1,
          backgroundColor: Colors.white,
            centerTitle: false,
          title: Text("Bookmarked",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black)),
          actions: [
            IconButton(icon: Icon(FontAwesomeIcons.search,color: Colors.black,), onPressed:(){})
          ],
        );
        break;
      case 2 :
        return null;
//          AppBar(
//          elevation: 1,
//          backgroundColor: Colors.white,
//            centerTitle: false,
//          title: Text("Chats",style: TextStyle(fontSize:20,fontWeight: FontWeight.w600,color: Colors.black)),
//          actions: [
//            IconButton(icon: Icon(FontAwesomeIcons.search,color: Colors.black,), onPressed:(){})
//          ],
//        );
        break;
      case 3 :
        return AppBar(
          automaticallyImplyLeading: false,

          elevation: 1,
          backgroundColor: Colors.white,
            centerTitle: false,
          title: Text("Account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text("Logout",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),)),
            )
          ],
        );
        break;
    }
  }

  body(int index){
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
