import 'package:flutter/material.dart';
import 'package:islamy/core/utilis/images_manager.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode currentTheme= ThemeMode.light;

  void updateThemeMode(ThemeMode newTheme){
    if(currentTheme==newTheme)return;
    currentTheme=newTheme;
    notifyListeners();
  }
  bool isLightTheme(){
   return currentTheme==ThemeMode.light;
  }
  String getBackgroundImage(){
    return isLightTheme()?ImagesManager.homeBgImage:ImagesManager.darkBg;
  }
  String getSebhaHeadTheme() {
    return isLightTheme()
        ? ImagesManager.sebhaHeaderLight
        : ImagesManager.sebhaHeaderDark;
  }

  String getSebhaBodyTheme() {
    return isLightTheme()
        ? ImagesManager.sebhaBodyLight
        : ImagesManager.sebhaBodyDark;
  }

}