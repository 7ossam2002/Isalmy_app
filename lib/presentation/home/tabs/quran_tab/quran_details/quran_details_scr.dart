import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/core/utilis/images_manager.dart';
import 'package:islamy/presentation/home/tabs/quran_tab/quran_details/quran_widgets.dart';
import 'package:islamy/presentation/home/tabs/quran_tab/widgets/quran_title/quran_title.dart';

class QuranDetailsScr extends StatefulWidget {
  QuranDetailsScr({super.key});

  @override
  _QuranDetailsScrState createState() => _QuranDetailsScrState();
}

class _QuranDetailsScrState extends State<QuranDetailsScr> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraArgs args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    // Call readFile when the screen is loaded
    readFile(args.index);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(ImagesManager.homeBgImage)),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.suraName),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: verses.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
            // separatorBuilder: (context, index) => Container(
            //   margin: EdgeInsets.symmetric(horizontal: 50),
            //   color: Theme.of(context).dividerColor,
            //   width: double.infinity,
            //   height: 2,
            //),
            itemBuilder: (context, index) => VerseWidget(
               verseItem:  verses[index]),
            itemCount: verses.length,
          ),
        ),
      ),
    );
  }

  void readFile(int index) async {
    // Load file and split it by lines
    String fileContent = await rootBundle.loadString("files/${index + 1}.txt");
    var fileLines = fileContent.split("\n");

    // Update the state when the file has been loaded
    setState(() {
      verses = fileLines;
    });
  }
}
