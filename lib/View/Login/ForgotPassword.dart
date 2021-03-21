import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nri_vichola/Route/RouteConstant.dart';
import 'package:nri_vichola/Utils/ColorUtils.dart';
import 'package:nri_vichola/Utils/ImageUtils.dart';
class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
            color: ColorUtils.primaryColor
        ),
        title:Text('Forgot Password',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: ColorUtils.primaryColor),) ,),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: Get.height*0.08,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Wrap(
                //  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Let us know your registered email address\nand we'll send you password reset instruction",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  ],
                ),
              ),
              SizedBox(height:Get.height*0.06,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  suffixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),

              SizedBox(height:Get.height*0.07,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return ColorUtils.primaryColor.withOpacity(0.5);
                              return ColorUtils.primaryColor; // Use the component's default.
                            },
                          )),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(vertical: Get.height*.02),
                        child: Text('Send Instraction'),
                      ),
                      onPressed: (){

                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height:20.0),


            ],
          ),
        ),
      ),
    );
  }
}
