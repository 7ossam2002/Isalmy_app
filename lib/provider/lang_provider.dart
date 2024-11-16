import 'package:flutter/material.dart';

class LangProvider extends ChangeNotifier {
  String currentLang = 'en';

  void updateLanguage(String newLang) {
    if (currentLang == newLang) return;
    currentLang = newLang;
    notifyListeners();
  }

  bool isEnglish() {
    return currentLang == 'en';
  }
}
