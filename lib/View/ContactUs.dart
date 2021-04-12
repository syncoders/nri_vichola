import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nri_vichola/Utils/ColorUtils.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: ColorUtils.primaryColor),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal:Get.size.width * 0.04,
        ),
        children: [
          Text(
            "we're Happy to\nhear from you!!",
            style: GoogleFonts.openSans(
              textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(height:Get.height*0.02,),

          Text(
            "Let us know your queries & Feedback",
            style: GoogleFonts.openSans(
              textStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height:Get.height*0.05,),

          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(
                                color: ColorUtils.primaryColor, width: 2))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                    foregroundColor: MaterialStateProperty.all<Color>(
                        ColorUtils.primaryColor),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: Get.height * .01),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Icon(Icons.call),
                        SizedBox(width: 10,),
                        FittedBox(
                          child: Text(
                            'Call Us',
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    // Get.offAndToNamed(dashboard);
                  },
                ),
              ),
              SizedBox(
                width: Get.size.width * 0.03,
              ),
              Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        ColorUtils.primaryColor),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: Get.height * .01),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.mail),
                        SizedBox(width: 10,),
                        FittedBox(
                          child: Text('Mail Us',
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                              )),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    // Get.offAndToNamed(dashboard);
                  },
                ),
              ),

            ],
          ),
          SizedBox(height:Get.height*0.07,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.mail,size: 30,color: ColorUtils.primaryColor,),
              SizedBox(width: 10,),
              FittedBox(
                child: Text('Send your message',
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    )),
              ),
            ],
          ),
          SizedBox(height:Get.height*0.03,),

          SizedBox(height:Get.height*0.02,),
          TextField(
            decoration: InputDecoration(
              labelText: "My email address is",
              hintText: 'Enter your email is',
              suffixIcon: Icon(Icons.email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          SizedBox(height:Get.height*0.02,),
          TextField(
            decoration: InputDecoration(
              labelText: "My concern is",
              hintText: 'Enter your Feedback or query',
              suffixIcon: Icon(Icons.comment),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),

        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        color: ColorUtils.primaryColor,
        child: Row(
          children: [
            Expanded(child: ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(0) ,
                backgroundColor:  MaterialStateProperty.all<Color>(
                    ColorUtils.primaryColor),
              ),
              child: Text("Submit Now",style: GoogleFonts.openSans(
                textStyle: TextStyle(color: Colors.white, fontSize:15,fontWeight: FontWeight.w700),),),
              onPressed: (){

              },
            ))
          ],
        ),
      ),
    );
  }
}
