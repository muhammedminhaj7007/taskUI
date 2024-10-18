import 'package:flutter/material.dart';

import 'main.dart';

class Location_page extends StatefulWidget {
  const Location_page({super.key});

  @override
  State<Location_page> createState() => _Location_pageState();
}

class _Location_pageState extends State<Location_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Location",
              style: TextStyle(fontSize: w * 0.06, fontWeight: FontWeight.w900),
            ),
          )
        ],
      ),
    );
  }
}
