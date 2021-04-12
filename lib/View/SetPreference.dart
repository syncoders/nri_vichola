import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:nri_vichola/Controller/SetPreferenceController.dart';
import 'package:nri_vichola/Utils/ColorUtils.dart';
class SetPreference extends StatelessWidget {
  final SetPreferenceController controller=Get.put(SetPreferenceController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: false,
          iconTheme: IconThemeData(
              color: ColorUtils.primaryColor
          ),
        title: Text("Set Preference",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black)),),
      body: ListView(
        children: [
          SizedBox(height: 10,),

          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(vertical: 15),

            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Age ',
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18),
                          children: <TextSpan>[
                            TextSpan(text: 'should be between',style: TextStyle(fontWeight: FontWeight.normal)),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Obx(()=>RangeSlider(
                  activeColor: ColorUtils.primaryColor,
                  inactiveColor: ColorUtils.primaryColor.withOpacity(.3),
                  values: controller.currentAgeValues.value,
                  min: 18,
                  max: 100,
                  divisions: 100-18,
                  labels: RangeLabels(
                    controller.currentAgeValues.value.start.round().toString(),
                    controller.currentAgeValues.value.end.round().toString(),
                  ),

                  onChanged: (RangeValues values) {

                      controller.currentAgeValues.value = values;
                  },
                )),
              ],
            ),


          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(vertical: 15),

            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Height ',
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18),
                          children: <TextSpan>[
                            TextSpan(text: 'should be between(CM)',style: TextStyle(fontWeight: FontWeight.normal)),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Obx(()=>RangeSlider(
                  activeColor: ColorUtils.primaryColor,
                  inactiveColor: ColorUtils.primaryColor.withOpacity(.3),
                  values: controller.currentHeightFeetValues.value,
                  min: 100,
                  max: 250,
                  labels: RangeLabels(
                   controller.currentHeightFeetValues.value.start.round().toString(),
                    controller.currentHeightFeetValues.value.end.round().toString(),
                  ),
                  divisions: 250-100,
                  onChanged: (RangeValues values) {
                    controller.currentHeightFeetValues.value = values;
                  },
                )),
              ],
            ),


          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 25),

            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Caste ',
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(text: 'should be between',style: TextStyle(fontWeight: FontWeight.normal)),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Obx(()=> SizedBox(
                  height: 50,
                  child: Container(
                    padding:
                    EdgeInsets.symmetric(horizontal:10, vertical:0),
                    decoration: BoxDecoration(
                       // color: AppColors.addressTextFill,

                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius:
                        BorderRadius.all(Radius.circular(4))),
                    // dropdown below..
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: DropdownButton<String>(
                              dropdownColor: Colors.white,
                              value: controller.dropdownValue.value,
                              elevation:30,
                              icon: Icon(Icons.arrow_drop_down),
                              iconSize: 20,
                              isExpanded:true,
                              underline: SizedBox(),
                              onChanged: (String newValue) {
                                controller.dropdownValue.value=newValue;
                                // setState(() {
                                //   dropdownValue = newValue;
                                // });
                                if(newValue=="more"){
                                  Get.snackbar("title", "message");
                                }
                              },
                              items: <String>[
                                "One",
                                "Two",
                                "3",
                                "4",
                                "5",
                                "more"
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value.toString(),

                                  child: Text(value.toString()),
                                );
                              }).toList()),
                        ),
                      ],
                    ),
                  ),
                )),
              ],
            ),


          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 25),

            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Education ',
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(text: 'should be between',style: TextStyle(fontWeight: FontWeight.normal)),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                MultiSelectDialogField(
                  items: controller.list,
                  title: Text("Education"),
                  selectedColor: ColorUtils.primaryColor,
                  decoration: BoxDecoration(
                    //color: Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  buttonIcon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey,
                  ),
                  buttonText: Text(
                    "Select Education",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  onConfirm: (results) {
                    //_selectedAnimals = results;
                  },
                )
              ],
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
              child: Text("Set preference",style: GoogleFonts.openSans(
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
