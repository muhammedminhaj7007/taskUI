import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/home_page.dart';

import 'favorite_page.dart';
import 'location_page.dart';
import 'main.dart';
import 'menu_page.dart';
import 'messanger_page.dart';

class Bottom_Navigation extends StatefulWidget {
  const Bottom_Navigation({super.key});

  @override
  State<Bottom_Navigation> createState() => _Bottom_NavigationState();
}

class _Bottom_NavigationState extends State<Bottom_Navigation> {
  @override
  var currentIndex = 0;
  List pages = [
    Home_page(),
    Favorite_page(),
    Messanger_page(),
    Location_page(),
    Menu_page()

  ];
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(
          milliseconds: 6
        ),
        backgroundColor: Colors.transparent,
        height: h*0.06,
        index: currentIndex,
        color: Colors.black,
        items: <Widget>[
          Icon(Icons.home, size: 25,color: Colors.orange.shade500,),
          Icon(Icons.favorite, size: 25,color: Colors.orange.shade500,),
          Icon(Icons.messenger,size: 25,color: Colors.orange.shade500,),
          Icon(Icons.location_on, size: 25,color: Colors.orange.shade500,),
          Icon(Icons.list_sharp,size: 25,color: Colors.orange.shade500,),
        ],
        onTap: (index) {
          currentIndex=index;
          setState(() {

          });
          //Handle button tap
        },
      ),
      body: pages[currentIndex],
    );
  }
}
