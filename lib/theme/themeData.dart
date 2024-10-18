
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dark.dart';
import 'ligth.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeData _themeData =lighMode;
  ThemeData get themeData=>_themeData;

  bool get isDarkMode =>_themeData == darkMode;

  set themeData (ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  }
  void toggleTheme(){
    if(_themeData== lighMode){
      themeData = darkMode;
    }else{
      themeData = lighMode;
    }
   }
}