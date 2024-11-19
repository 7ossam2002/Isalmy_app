import 'package:flutter/material.dart';
import 'package:islamy/core/utilis/images_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode currentTheme= ThemeMode.light;

  void updateThemeMode(ThemeMode newTheme){
    if(currentTheme==newTheme)return;
    currentTheme=newTheme;
    _saveTheme(newTheme);
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
  Future<void> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedTheme = prefs.getString('theme');
    if (savedTheme == 'dark') {
      currentTheme = ThemeMode.dark;
    } else {
      currentTheme = ThemeMode.light;
    }
    notifyListeners();
  }
  Future<void> _saveTheme(ThemeMode themeMode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('theme', themeMode == ThemeMode.light ? 'light' : 'dark');
  }

}