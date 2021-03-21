import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nri_vichola/Utils/ColorUtils.dart';
import 'package:nri_vichola/Utils/ImageUtils.dart';
class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
          color: ColorUtils.primaryColor
      ),
      title:Text('Registration',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: ColorUtils.primaryColor),) ,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: Get.height*0.05,),
              Container(
                width: Get.height*0.20,
                height:Get.height*0.20,
                child: SvgPicture.asset(
                  SvgUtils.signInCouple,
                  semanticsLabel: 'signin Logo',
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height:Get.height*0.02,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  suffixIcon: Icon(Icons.account_box_rounded),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height:Get.height*0.02,),

              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  suffixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height:Get.height*0.02,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height:Get.height*0.02,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height:Get.height*0.02,),
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
                        child: Text('Registration'),
                      ),
                      onPressed: (){

                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height:20.0),
              GestureDetector(
                onTap: (){
                  Get.back();
                },
                child: Text.rich(
                  TextSpan(
                      text: 'Already have an account? ',
                      children: [
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                              color: ColorUtils.primaryColor
                          ),
                        ),
                      ]
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
