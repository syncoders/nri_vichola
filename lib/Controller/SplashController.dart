import 'dart:async';

import 'package:get/get.dart';
import 'package:nri_vichola/Route/RouteConstant.dart';

class SplashScreenController extends GetxController{
  

 @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    Timer(
        Duration(seconds: 3),
            () => Get.toNamed(signIn)
    );
  }
}