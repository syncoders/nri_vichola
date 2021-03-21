import 'package:animated_splash/animated_splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nri_vichola/Controller/SplashController.dart';
import 'package:nri_vichola/Utils/ImageUtils.dart';
import 'package:nri_vichola/View/Login/Signin.dart';

import 'Dashboard.dart';
class Splash extends StatelessWidget {
  final SplashScreenController screenController=Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset(PngUtils.splashLogo),
    );
  }
}
