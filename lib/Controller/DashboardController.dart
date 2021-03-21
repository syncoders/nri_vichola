import 'package:get/get.dart';

class DashboardController extends GetxController{
  var currentIndex=0.obs;
  onTabChange(int position){
    currentIndex.value=position;
  }
}