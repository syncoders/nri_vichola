import 'package:flutter/material.dart';
import 'package:nri_vichola/Utils/ColorUtils.dart';

class SubscriptionLiat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,iconTheme: IconThemeData(
          color: ColorUtils.primaryColor
      ),title: Text("Subscription",style: TextStyle(color: Colors.black),),),
      body: ListView(
        children: [
          Container(color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("You heve subscription to",style: TextStyle(color: Colors.black,fontSize: 18 ),),
            ),
          ),
          Container(
            color: Colors.white,
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              color: ColorUtils.primaryColor,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Premiun Plan",style: TextStyle(color: Colors.white,fontSize: 18 ,fontWeight: FontWeight.w900)),
                        Text("2 days ago",style: TextStyle(color: Colors.white,fontSize: 18 )),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(children: [
                      Icon(Icons.check_circle,color: Colors.white,),
                      SizedBox(width: 30,),
                      Text("Direct Message to all profile",style: TextStyle(color: Colors.white,fontSize: 18 ))
                    ],),
                    SizedBox(height: 10,),

                    Row(children: [
                      Icon(Icons.check_circle,color: Colors.white,),
                      SizedBox(width: 30,),
                      Text("Direct Message to all profile",style: TextStyle(color: Colors.white,fontSize: 18 ))
                    ],),
                    SizedBox(height: 10,),

                    Row(children: [
                      Icon(Icons.check_circle,color: Colors.white,),
                      SizedBox(width: 30,),
                      Text("Direct Message to all profile",style: TextStyle(color: Colors.white,fontSize: 18 ))
                    ],)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text("Purchesed Subscription",style: TextStyle(color: Colors.black,fontSize: 22 ),),
          ),
          ListView.builder(
            itemCount: 3,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemBuilder: (BuildContext context,int value)=>Card(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            color: ColorUtils.primaryColor,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Premiun Plan",style: TextStyle(color: Colors.white,fontSize: 18 ,fontWeight: FontWeight.w900),textScaleFactor: 1.3,),
                      Text("\$ 9.99",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w900   ),textScaleFactor: 1.3),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(children: [
                    Icon(Icons.check_circle,color: Colors.white,),
                    SizedBox(width: 30,),
                    Text("Direct Message to all profile",style: TextStyle(color: Colors.white,fontSize: 18 ))
                  ],),
                  SizedBox(height: 10,),

                  Row(children: [
                    Icon(Icons.check_circle,color: Colors.white,),
                    SizedBox(width: 30,),
                    Text("Direct Message to all profile",style: TextStyle(color: Colors.white,fontSize: 18 ))
                  ],),
                  SizedBox(height: 10,),

                  Row(children: [
                    Icon(Icons.check_circle,color: Colors.white,),
                    SizedBox(width: 30,),
                    Text("Direct Message to all profile",style: TextStyle(color: Colors.white,fontSize: 18 ))
                  ],)
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
