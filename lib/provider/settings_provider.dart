import 'package:flutter/material.dart';
import 'package:islamy/core/utilis/images_manager.dart';

class SettingsProvider extends ChangeNotifier {

  ThemeMode currentTheme= ThemeMode.light;
  String currentLan='en';
  void changeAppTheme(ThemeMode newTheme){
    if(currentTheme==newTheme)
      return;
    currentTheme=newTheme;
    notifyListeners();
  }


  String getBackgroundImage(){
    return currentTheme ==ThemeMode.light ?ImagesManager.homeBgImage:ImagesManager.darkBg;
  }

 void changeAppLang(String newLang){
    if(currentLan==newLang)
      return;
      currentLan = newLang;
      notifyListeners();

  }
  bool englishIsSelected(){
    return currentLan=='en';
  }

  bool arabicIsSelected(){
    return currentLan=='ar';
  }
}