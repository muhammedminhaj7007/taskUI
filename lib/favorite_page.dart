import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Favorite_page extends StatefulWidget {
  const Favorite_page({super.key});

  @override
  State<Favorite_page> createState() => _Favorite_pageState();
}

class _Favorite_pageState extends State<Favorite_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "Favorite",
            style: TextStyle(fontSize: w * 0.06, fontWeight: FontWeight.w900),
          )),

        ],
      ),
    );
  }
}
