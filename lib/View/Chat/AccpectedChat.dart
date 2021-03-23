import 'package:flutter/material.dart';
import 'package:get/get.dart';
class AccpectedChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(top: 0),
        itemCount: 10,
        itemBuilder:(BuildContext context,int value){
          return Container(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical:5),
            child: ListTile(
              leading: Image.network("https://i.pinimg.com/originals/d0/7a/f6/d07af684a67cd52d2f10acd6208db98f.jpg",
                height: Get.width*0.20,
                width: Get.width*0.20,
                fit: BoxFit.fill,
              ),
              title: Text("Suchandra"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Suchandra"),
                  Text("Suchandra")

                ],
              ),
            ),
          );
        });
  }
}
