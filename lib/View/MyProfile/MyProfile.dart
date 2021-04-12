import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nri_vichola/Controller/ProfileController.dart';
import 'package:nri_vichola/Utils/ColorUtils.dart';

class MyProfile extends StatelessWidget {
  final ProfileController controller = Get.put(ProfileController());
  final List<Widget> myTabs = [
    Tab(text: 'Account'),
    Tab(text: 'Personal'),
    Tab(text: 'Profesional'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          iconTheme: IconThemeData(color: ColorUtils.primaryColor),
          title: Text("My Profile",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black)),
        ),
        body: ListView(
          children: [
            SizedBox(height: 20,),

            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                  itemBuilder: (BuildContext context,int index){
               return index==0?Container(
                 margin:  EdgeInsets.symmetric(horizontal: 10),
                   height: 120,width: 120,
                 color: Colors.grey[400],
                 child: Icon(Icons.camera,size: 40,color: ColorUtils.primaryColor,),
               ):
               Padding(
                 padding:  EdgeInsets.symmetric(horizontal: 10),
                 child: Stack(
                   alignment: Alignment.topRight,
                   children: [
                     Image.network("https://i.pinimg.com/originals/d0/7a/f6/d07af684a67cd52d2f10acd6208db98f.jpg",
                       height: 120,width: 120,fit: BoxFit.fill,),
                       Icon(Icons.remove_circle,size: 25,color: ColorUtils.primaryColor,)
                   ],
                 ),
               );
              }),
            ),
            SizedBox(height: 20,),
            Container(
              color: Colors.grey[100],
              child: TabBar(

                //controller: _tabController,
                labelColor: ColorUtils.primaryColor,
                unselectedLabelColor: Colors.black,
                indicatorColor: ColorUtils.primaryColor,
                indicatorWeight: 4,
                unselectedLabelStyle: GoogleFonts.poppins(
                  textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                labelStyle: GoogleFonts.poppins(
                  textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                //isScrollable: true,
                tabs: myTabs,
                onTap: (val) {
                  controller.tabIndex.value = val;
                },
              ),
            ),
            Obx(() => Center(
                  child: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                      child: Column(
                        children:
                            List.generate(5, (index) => Text("")).toList(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                Text("Name",style: GoogleFonts.openSans(
                                  textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                                ) ,),
                                      SizedBox(height: 10,),
                                      Text("Name",style: GoogleFonts.openSans(
                                        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                                      ) ,),
                                      SizedBox(height: 10,),Text("Name",style: GoogleFonts.openSans(
                                        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                                      ) ,),
                                      SizedBox(height: 10,),Text("Name",style: GoogleFonts.openSans(
                                        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                                      ) ,),
                                      SizedBox(height: 10,),Text("Name",style: GoogleFonts.openSans(
                                        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                                      ) ,),
                                      SizedBox(height: 10,),
                                      Text("Name",style: GoogleFonts.openSans(
                                        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                                      ) ,),
                                      SizedBox(height: 10,),
                              ],)),
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [
                                    Text("name",style: GoogleFonts.openSans(
                                      textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                                    )),
                                      SizedBox(height: 10,),
                                      Text("Name",style: GoogleFonts.openSans(
                                        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                                      ) ,),
                                      SizedBox(height: 10,),
                                      Text("Name",style: GoogleFonts.openSans(
                                        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                                      ) ,),
                                      SizedBox(height: 10,),
                                      Text("Name",style: GoogleFonts.openSans(
                                        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                                      ) ,),
                                      SizedBox(height: 10,),
                                      Text("Name",style: GoogleFonts.openSans(
                                        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                                      ) ,),
                                      SizedBox(height: 10,),
                                      Text("Name",style: GoogleFonts.openSans(
                                        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                                      ) ,),
                                      SizedBox(height: 10,),
                                  ],))
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: List.generate(5, (index) => Text("")).toList(),
                    ),
                  ][controller.tabIndex.value],
                )),
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
                child: Text("Edit Profile",style: GoogleFonts.openSans(
                  textStyle: TextStyle(color: Colors.white, fontSize:15,fontWeight: FontWeight.w700),),),
                onPressed: (){

                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
