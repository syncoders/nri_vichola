import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nri_vichola/Route/RouteConstant.dart';
class AccpectedChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(top: 0),
        itemCount: 10,
        itemBuilder:(BuildContext context,int value){
          return GestureDetector(
            onTap: (){
              Get.toNamed(chatDetails);
            },
            child: Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical:5),
              child: ListTile(
                leading: Image.network("https://i.pinimg.com/originals/d0/7a/f6/d07af684a67cd52d2f10acd6208db98f.jpg",
                  height: Get.width*0.20,
                  width: Get.width*0.20,
                  fit: BoxFit.fill,
                ),
                title: Text("Samantha Smith",style: GoogleFonts.openSans(
                textStyle: TextStyle(color: Colors.black87, fontSize: 18,fontWeight: FontWeight.w700),)),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ok,Thank you",style: GoogleFonts.openSans(
                      textStyle: TextStyle(color: Colors.black54, fontSize: 15,fontWeight: FontWeight.w400),)),
                    SizedBox(height: 5,),
                    Text("Today,11:25am",style: GoogleFonts.openSans(
                      textStyle: TextStyle(color: Colors.black54, fontSize: 13,fontWeight: FontWeight.w400),)),
                    SizedBox(height: 5,),

                  ],
                ),
              ),
            ),
          );
        });
  }
}
