import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LangProvider extends ChangeNotifier {
  String currentLang = 'en';

  void updateLanguage(String newLang) {
    if (currentLang == newLang) return;
    currentLang = newLang;
    _saveLang(newLang);
    notifyListeners();
  }

  bool isEnglish() {
    return currentLang == 'en';
  }
  Future<void> getLang() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    currentLang = prefs.getString('language') ?? 'en'; // Default to English
    notifyListeners();
  }
  Future<void> _saveLang(String language) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('language', language);
  }
}
