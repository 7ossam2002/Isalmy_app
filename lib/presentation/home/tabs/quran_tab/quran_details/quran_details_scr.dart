import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/presentation/home/tabs/quran_tab/quran_details/quran_widgets.dart';
import 'package:islamy/presentation/home/tabs/quran_tab/widgets/quran_title/quran_title.dart';
import 'package:provider/provider.dart';

import '../../../../../provider/lang_provider.dart';
import '../../../../../provider/quran_provider.dart';
import '../../../../../provider/theme_provider.dart';

class QuranDetailsScr extends StatefulWidget {
  QuranDetailsScr({super.key});

  @override
  _QuranDetailsScrState createState() => _QuranDetailsScrState();
}

class _QuranDetailsScrState extends State<QuranDetailsScr> {

  

  @override
  Widget build(BuildContext context) {
    var themeProvider= Provider.of<ThemeProvider>(context);
    var langProvider= Provider.of<LangProvider>(context);
    var quranProvider= Provider.of<QuranProvider>(context);

    SuraArgs args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    // Call readFile when the screen is loaded

   if(quranProvider.verses.isEmpty)quranProvider.readFile(args.index);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(themeProvider.getBackgroundImage())),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.suraName),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: quranProvider.verses.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
            // separatorBuilder: (context, index) => Container(
            //   margin: EdgeInsets.symmetric(horizontal: 50),
            //   color: Theme.of(context).dividerColor,
            //   width: double.infinity,
            //   height: 2,
            //),
            itemBuilder: (context, index) => VerseWidget(
               verseItem:  quranProvider.verses[index]),
            itemCount: quranProvider.verses.length,
          ),
        ),
      ),
    );
  }


}
