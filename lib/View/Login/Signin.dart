import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nri_vichola/Route/RouteConstant.dart';
import 'package:nri_vichola/Utils/ColorUtils.dart';
import 'package:nri_vichola/Utils/ImageUtils.dart';
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: Get.height*0.05,),
              Container(
                width: Get.width,
                height:Get.height*0.40,
                child: SvgPicture.asset(
                    SvgUtils.signInCouple,
                    semanticsLabel: 'signin Logo',
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Login',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                  ],
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
              Align(
                alignment: Alignment.centerRight,
                child:GestureDetector(
                    onTap:(){
                      Get.toNamed(forgotPassword);
                },child: Text('Forget password?',style: TextStyle(fontSize: 16.0),)) ,
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
                        child: Text('Login'),
                      ),
                      onPressed: (){
                        Get.toNamed(dashboard);

                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height:20.0),
              GestureDetector(
                onTap: (){
                  Get.toNamed(signUp);
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>Si()));
                },
                child: Text.rich(
                  TextSpan(
                      text: 'Don\'t have an account? ',
                      children: [
                        TextSpan(
                          text: 'Signup',
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
