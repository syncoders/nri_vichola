import 'package:flutter/material.dart';
import 'package:nri_vichola/Widget/ProfileCard.dart';
class NewRequestedChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(top: 0),

        itemCount: 10,
        itemBuilder:(BuildContext context,int value){
          return ProfileCard(isDeleted: true,);
        });
  }
}
