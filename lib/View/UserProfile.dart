import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart' as swiper;
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nri_vichola/Controller/UserProfileController.dart';
import 'package:nri_vichola/Utils/ColorUtils.dart';
class UserProfile extends StatelessWidget {
  final UserProfileController controller =Get.put(UserProfileController());
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,

      child: Scaffold(
        body: _customScrollView(),
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
                child: Text("Connect Request",style: GoogleFonts.openSans(
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
  Widget _customScrollView() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
        SliverAppBar(

          expandedHeight: Get.height/2,
          floating: true,
          pinned: false,
          flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Collapsing Toolbar",
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(color: Colors.white, fontSize:15,fontWeight: FontWeight.w700),)),

                        Text('26 Years | 5"4 feet',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                            ))
                      ],
                    )),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white ,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(FontAwesomeIcons.bookmark,size: 16,color: Colors.white,),
                        )
                    )

                  ],
                ),
              ),

              background: swiper.Swiper(
                outer:false,
                pagination: new SwiperPagination(
                  alignment: Alignment.bottomLeft,
                    margin: new EdgeInsets.symmetric(vertical:80,horizontal: 15)
                ),
               // pagination: swiper.SwiperPagination.rect,
                layout: swiper.SwiperLayout.STACK,

                itemWidth: Get.width,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) => Container(
                  width: Get.width,
                  child: Image.network(
                    "https://i.pinimg.com/originals/d0/7a/f6/d07af684a67cd52d2f10acd6208db98f.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                autoplay: true,
              )),
        ),
        SliverPersistentHeader(
          delegate: _SliverAppBarDelegate(
            TabBar(
              isScrollable: true,
              indicatorColor: ColorUtils.primaryColor,
              labelStyle:GoogleFonts.openSans(
                textStyle: TextStyle( fontSize:15,fontWeight: FontWeight.w700),) ,
              labelColor: ColorUtils.primaryColor,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab( text: "Personal Info"),
                Tab( text: "Expectation"),
              ],
              onTap: (val){
                controller.currentIndex.value=val;
              },
            ),
          ),
          pinned: true,
        )
      ];
        },
      body:  SafeArea(
        child: Obx(()=>_body(controller.currentIndex.value)),
      ),
    );
  }
  _body(int index){
    switch(index){
      case 0:
        return _personalInfo();
        break;
      case 1:
        return _expectation();
        break;
    }

  }
  _personalInfo(){
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
      children: [
        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",style: GoogleFonts.openSans(
          textStyle: TextStyle(color: Colors.black, fontSize:15,fontWeight: FontWeight.w400),),),
        SizedBox(height: 30,),
        Row(
          children: [
            Text("Education",
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(color: Colors.grey[700], fontSize:22,fontWeight: FontWeight.w400),)),
            SizedBox(width: 30,),
            Expanded(
              flex: 2,
              child: Text("Education",
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(color: Colors.grey[700], fontSize:22,fontWeight: FontWeight.w400),)),
            ),
          ],
        ),
        SizedBox(height: 10,),

        Row(
          children: [
            Text("Education",
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(color: Colors.grey[700], fontSize:22,fontWeight: FontWeight.w400),)),
            SizedBox(width: 30,),
            Expanded(
              flex: 2,
              child: Text("Education",
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(color: Colors.grey[700], fontSize:22,fontWeight: FontWeight.w400),)),
            ),
          ],
        ),
        SizedBox(height: 10,),

        Row(
          children: [
            Text("Education",
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(color: Colors.grey[700], fontSize:22,fontWeight: FontWeight.w400),)),
            SizedBox(width: 30,),
            Expanded(
              flex: 2,
              child: Text("Education",
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(color: Colors.grey[700], fontSize:22,fontWeight: FontWeight.w400),)),
            ),
          ],
        )
      ],
    );
  }
  _expectation(){
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
      children: [

        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",style: GoogleFonts.openSans(
          textStyle: TextStyle(color: Colors.black, fontSize:15,fontWeight: FontWeight.w400),),),
        SizedBox(height: 30,),
        Row(
          children: [
            Text("Caste",
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(color: Colors.grey[700], fontSize:22,fontWeight: FontWeight.w400),)),
            SizedBox(width: 30,),
            Expanded(
              flex: 2,
          child: Text("Caste",
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(color: Colors.grey[700], fontSize:22,fontWeight: FontWeight.w400),)),
            ),
          ],
        ),
        SizedBox(height: 10,),

        Row(
          children: [
            Text("Education",
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(color: Colors.grey[700], fontSize:22,fontWeight: FontWeight.w400),)),
            SizedBox(width: 30,),
            Expanded(
              flex: 2,
              child: Text("Education",
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(color: Colors.grey[700], fontSize:22,fontWeight: FontWeight.w400),)),
            ),
          ],
        ),
        SizedBox(height: 10,),

        Row(
          children: [
            Text("Education",
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(color: Colors.grey[700], fontSize:22,fontWeight: FontWeight.w400),)),
            SizedBox(width: 30,),
            Expanded(
              flex: 2,
              child: Text("Education",
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(color: Colors.grey[700], fontSize:22,fontWeight: FontWeight.w400),)),
            ),
          ],
        )
      ],
    );
  }
}
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}