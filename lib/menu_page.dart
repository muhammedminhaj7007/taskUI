import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Menu_page extends StatefulWidget {
  const Menu_page({super.key});

  @override
  State<Menu_page> createState() => _Menu_pageState();
}

class _Menu_pageState extends State<Menu_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "Menu",
            style: TextStyle(fontSize: w * 0.06, fontWeight: FontWeight.w900),
          )),
        ],
      ),
    );
  }
}
