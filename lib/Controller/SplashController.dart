import 'package:get/get.dart';

class SplashScreenController extends GetxController{

  Function duringSplash = () {
    print('Something background process');
    int a = 123 + 23;
    print(a);

    if (a > 100)
      return 1;
    else
      return 2;
  };
}