import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';

class SetPreferenceController extends GetxController{
  Rx<RangeValues> currentAgeValues =  RangeValues(21, 40).obs;
  Rx<RangeValues> currentHeightFeetValues =  RangeValues(120,200).obs;
  RxString dropdownValue = 'One'.obs;
  List<String> item=List();
  RxList<String> selected=RxList();
  var list=[];

  @override
  void onInit() {
    item.add("MBA");
    item.add("MCA");
    item.add("BA");
    list = item
        .map((animal) => MultiSelectItem<String>(animal,animal))
        .toList();
    // TODO: implement onInit
    super.onInit();
  }
}