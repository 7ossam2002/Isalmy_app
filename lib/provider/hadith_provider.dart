import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../presentation/home/tabs/hadith_tab/hadith_tab.dart';

class HadithProvider extends ChangeNotifier{
  List<HadithItem> allHadithList=[];

  void readHadithFile() async {
    String fileContent =
    await rootBundle.loadString('files/ahadeth.txt');
    List<String> hadithItemList = fileContent.split('#');
    for(var hadith in hadithItemList){
      List<String> hadithLines=hadith.trim().split("\n");
      String title =hadithLines[0];
      hadithLines.removeAt(0);
      String content= hadithLines.join("\n");
      HadithItem hadithItem = HadithItem(title: title, content: content);
      allHadithList.add(hadithItem);
      //print(content);
    }

    notifyListeners();
  }

}