import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nri_vichola/Utils/ColorUtils.dart';
import 'package:nri_vichola/View/Chat/AccpectedChat.dart';
import 'package:nri_vichola/View/Chat/NewRequestedChat.dart';
import 'package:nri_vichola/View/Chat/PendingChat.dart';

class Chat extends StatelessWidget {
  final List<String> _tabs = <String>[
    "Accpeted",
    "New Request",
    "Pending",
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              centerTitle: false,
              backgroundColor: Colors.white,
              title: Text("Chats",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
              elevation: 0.0,
              floating: true,
              pinned: true,
              // snap: true,
              actions: [
                IconButton(
                    icon: Icon(
                      FontAwesomeIcons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {})
              ],
             // forceElevated: innerBoxIsScrolled,
              bottom: TabBar(
                labelColor: ColorUtils.primaryColor,
                unselectedLabelColor:Colors.black,
                unselectedLabelStyle:TextStyle(color: ColorUtils.primaryColor) ,
                labelStyle: TextStyle(color: ColorUtils.primaryColor),
                indicatorColor: ColorUtils.primaryColor,
                tabs: _tabs.map((String name) => Tab(text: name)).toList(),
              ),
            ),
           /* SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                centerTitle: false,
                backgroundColor: Colors.white,
                title: Text("Chats",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
                elevation: 0.0,
               // floating: true,
                pinned: true,
               // snap: true,
                actions: [
                  IconButton(
                      icon: Icon(
                        FontAwesomeIcons.search,
                        color: Colors.black,
                      ),
                      onPressed: () {})
                ],
                forceElevated: innerBoxIsScrolled,
                bottom: TabBar(

                  labelColor: ColorUtils.primaryColor,
                  unselectedLabelColor:Colors.black,
                  unselectedLabelStyle:TextStyle(color: ColorUtils.primaryColor) ,
                  labelStyle: TextStyle(color: ColorUtils.primaryColor),
                  indicatorColor: ColorUtils.primaryColor,
                  tabs: _tabs.map((String name) => Tab(text: name)).toList(),
                ),
              ),
            ),*/
          ];
        },
        body: TabBarView(
          children: [
            AccpectedChat(),
            NewRequestedChat(),
            PendingChat(),
          ],
        ),
      ),
    );
  }
}
