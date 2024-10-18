import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/theme/themeData.dart';
import 'bottom_navigation.dart';
import 'home_page.dart';

var w;
var h;
void main() {
  runApp(
    ChangeNotifierProvider(create:
        (context) => ThemeProvider(),
        child:MyApp(),)
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      // home: Home_page(),
      home:  Bottom_Navigation(),
      theme: Provider.of<ThemeProvider>(context).themeData,
      debugShowCheckedModeBanner: false,
    );
  }
}
