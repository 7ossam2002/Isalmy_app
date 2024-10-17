import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/core/utilis/images_manager.dart';
import 'package:islamy/core/utilis/strings_manager.dart';
import 'package:islamy/presentation/home/tabs/hadith_tab/widgets/hadith_title_wid.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadithTab extends StatefulWidget {
  const HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<HadithItem> allHadithList = [];

  @override
  void initState() {
    super.initState();
    readHadithFile(); // Start reading file when the widget initializes
  }

  @override
  Widget build(BuildContext context) {
    if(allHadithList.isEmpty);
    return Container(


      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Center(child: Image.asset(ImagesManager.hadithHeaderIm))),

        Card(
          color: Colors.green[200],
           elevation: 30,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 100),
            child: Text(AppLocalizations.of(context)!.hadith,style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w600),),
          ),
        ),


          Expanded(flex: 2,
            child: ListView.separated(

              separatorBuilder: (context, index) => Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
               // color: Theme.of(context).dividerColor,
                height: 2,
              ),
              itemBuilder: (context, index) => Card(child: HadithTitleWidget(hadithItem: allHadithList[index])),
              itemCount: allHadithList.length,
            ),
          )
        ],
      ),
    );
  }

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


    setState(() {
       // allHadithList = hadithItems; // Update the list and rebuild UI
    });
  }
}

class HadithItem {
  String title;
  String content;

  HadithItem({required this.title, required this.content});
}