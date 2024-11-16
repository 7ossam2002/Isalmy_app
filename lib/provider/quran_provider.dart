import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuranProvider extends ChangeNotifier{
  List<String> verses=[];

  void readFile(int index) async {
    // Load file and split it by lines
    String fileContent = await rootBundle.loadString("files/${index + 1}.txt");
    var fileLines = fileContent.split("\n");
    verses = fileLines;
    notifyListeners();
  }
}