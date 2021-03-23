import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nri_vichola/Controller/DashboardController.dart';
import 'package:nri_vichola/Widget/ProfileCard.dart';
class SoulMeet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
        itemBuilder:(BuildContext context,int value){
      return ProfileCard(isBookMarked: false,);
    });
  }
}
