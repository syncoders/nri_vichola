import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:nri_vichola/Utils/ColorUtils.dart';

class ProfileCard extends StatelessWidget {
  final bool isBookMarked;

  ProfileCard({Key key, this.isBookMarked}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(vertical:15) ,
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text("Suchandra"),
                Spacer(),
                Row(
                  children: [
                    Text("26 Years | 5'4 feet"),
                    SizedBox(
                      width: 10,
                    ),
                    !isBookMarked?
                    CircleAvatar(
                      radius: Get.size.width * 0.035+1,
                      backgroundColor: ColorUtils.primaryColor,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: Get.size.width * 0.035,
                        child: Icon(FontAwesomeIcons.bookmark,
                            size: Get.size.width * 0.035, color: ColorUtils.primaryColor),
                      ),
                    ):
                    CircleAvatar(
                      backgroundColor: ColorUtils.primaryColor,
                      radius: Get.size.width * 0.035,
                      child: Icon(FontAwesomeIcons.solidBookmark,
                          size: Get.size.width * 0.035, color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: Get.size.width * 0.04,
          ),
          Container(
            height: Get.height * 0.15,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Suchandra"),
                        Text("Suchandra"),
                        Text("Suchandra"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1 ,
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: Get.height * 0.15,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 2  ,
                        itemBuilder: (BuildContext context, int index) =>
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 5),
                              child: Image.network(
                                  "https://i.pinimg.com/originals/d0/7a/f6/d07af684a67cd52d2f10acd6208db98f.jpg"),
                            )),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: Get.size.width * 0.04,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: BorderSide(color: ColorUtils.primaryColor,width: 2))),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                      foregroundColor: MaterialStateProperty.all<Color>(ColorUtils.primaryColor),

                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: Get.height * .014),
                      child: Text('More info'),
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
                      shape:
                      MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              )),
                      backgroundColor: MaterialStateProperty.all<Color>(ColorUtils.primaryColor),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),

                    ),
                    child: Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: Get.height * .014),
                      child: Text('Connect Request'),
                    ),
                    onPressed: () {
                      // Get.offAndToNamed(dashboard);
                    },
                  ),
                ),
                SizedBox(
                  width: Get.size.width * 0.04,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
