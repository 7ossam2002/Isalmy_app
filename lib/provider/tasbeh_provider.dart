import 'package:flutter/material.dart';

class TasbehProvider extends ChangeNotifier {
  double turns = 0.0;
  int count = 0;
  int index = 0;
  List<String> tasbeeh = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
    "استغفر الله"
  ];
  String tasbehName = "سبحان الله";

  void Altasbeeh() {
    count++;
    turns += 1 / 33;
    if (count > 33) {
      index++;
      tasbehName = tasbeeh[index];
      if (index >= 3) {
        index = -1;
      }
      count = 0;
    }
    notifyListeners();
  }

}