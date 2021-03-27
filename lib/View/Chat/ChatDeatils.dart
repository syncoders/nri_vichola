import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nri_vichola/Utils/ColorUtils.dart';
class ChatDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor:Colors.white ,
        iconTheme: IconThemeData(
            color: ColorUtils.primaryColor
        ),
        title: Row(
          children: [
            Image.network("https://i.pinimg.com/originals/d0/7a/f6/d07af684a67cd52d2f10acd6208db98f.jpg",
              height: 50,
              width: 50,
            ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Samantha Smith",style: TextStyle(color: ColorUtils.primaryColor,fontSize: 16),),
              Text("Online",style: TextStyle(color: Colors.grey[300],fontSize: 16))
            ],

      )
          ],
        ),
        actions: [

          Center(
            child: IconButton(onPressed: (){}, icon: Icon(Icons.error_outline,color: ColorUtils.primaryColor,),),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
                itemBuilder: (BuildContext context,int value)=>Column(
              children: [
                Bubble(
                  margin: BubbleEdges.only(top: 10),
                  elevation:10,
                  alignment: Alignment.topRight,
                  nip: BubbleNip.rightTop,
                  color: Color.fromARGB(255, 225, 255, 199),
                  child: Text('Hello, World!'),
                ),
                Bubble(
                  margin: BubbleEdges.only(top: 10),
                  elevation: 10,
                  alignment: Alignment.topLeft,
                  nip: BubbleNip.leftTop,
                  child: Text('Hi, developer!'),
                )
              ],
            )),
          ),
          Container(
            color: Colors.grey[300],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:20,vertical: 10),
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.smile),
                  Expanded(child: TextField(
                    decoration: new InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                        hintText: 'Write a message'
                    ),
                  )),
                  Icon(FontAwesomeIcons.paperPlane,color: ColorUtils.primaryColor,),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
