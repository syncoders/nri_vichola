import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:nri_vichola/Utils/ColorUtils.dart';
class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.white,
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: Row(
              children: [
                Image.network("https://i.pinimg.com/originals/d0/7a/f6/d07af684a67cd52d2f10acd6208db98f.jpg",
                height: Get.width*0.35,
                  width: Get.width*0.35,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hey,"),
                    Text("George Smith,"),
                    SizedBox(height: 10,),
                    Text("View Profile"),

                  ],
                ),

              ],
            ),
          ),
        )
        ,
        Container(
          color: ColorUtils.primaryColor,
          child: ListTile(
            minVerticalPadding: 25,
            title: Text("You're Subscribed"),
            subtitle:Text("You're Subscribed"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.chevronRight  ),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            minVerticalPadding: 25,
            title: Text("You're Subscribed"),
            subtitle:Text("You're Subscribed"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.chevronRight  ),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            minVerticalPadding: 25,
            title: Text("You're Subscribed"),
            subtitle:Text("You're Subscribed"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.chevronRight  ),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            minVerticalPadding: 25,
            title: Text("You're Subscribed"),
            subtitle:Text("You're Subscribed"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.chevronRight  ),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child:ListTile(
            minVerticalPadding: 25,
            title: Text("You're Subscribed"),
            subtitle:Text("You're Subscribed"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.chevronRight  ),
              ],
            ),
          )
        )
      ],
    );
  }
}
