
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nri_vichola/Controller/ProfileController.dart';
import 'package:nri_vichola/Utils/ColorUtils.dart';
class MyProfile extends StatelessWidget {
 final  ProfileController controller=Get.put(ProfileController());
  final List<Widget> myTabs = [
    Tab(text: 'Activities'),
    Tab(text: 'Reviews'),
    Tab(text: 'Reviews'),

  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar:  AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.white,
          elevation: 1,
          centerTitle: false,
          iconTheme: IconThemeData(
              color: ColorUtils.primaryColor
          ),
          title: Text("My Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black)),),
        body:ListView(
          children: [
        TabBar(

        //controller: _tabController,
        labelColor: ColorUtils.primaryColor,
      unselectedLabelColor: Colors.black,
      indicatorColor: ColorUtils.primaryColor,
      indicatorWeight: 4,
      unselectedLabelStyle:  GoogleFonts.poppins(
      textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
    ),
    labelStyle:  GoogleFonts.poppins(
    textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
    ),
    //isScrollable: true,
    tabs: myTabs,
    onTap: (val){
    controller.tabIndex.value=val;
    },
    ),
            Obx(()=>Center(
              child: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal:0,vertical: 10),
                  child: Column(
                    children: List.generate(5, (index) => Text(""))
                        .toList(),
                  ),
                ),
                Column(
                  children: List.generate(5, (index) => Text(""))
                      .toList(),
                ),
                Column(
                  children: List.generate(5, (index) => Text(""))
                      .toList(),
                ),              ][controller.tabIndex.value],
            )),
        ],
      ) ,
      ),
    );
  }
}
