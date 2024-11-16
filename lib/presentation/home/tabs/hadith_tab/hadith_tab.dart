import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/core/utilis/images_manager.dart';
import 'package:islamy/presentation/home/tabs/hadith_tab/widgets/hadith_title_wid.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../../provider/hadith_provider.dart';

class HadithTab extends StatefulWidget {
  const HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {




  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => HadithProvider(),
      child: Consumer<HadithProvider>(
        builder: (context, value, child) {
          var hadithProvider = Provider.of<HadithProvider>(context);
          if (hadithProvider.allHadithList.isEmpty) hadithProvider
              .readHadithFile();

          return Container(


            child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Center(
                        child: Image.asset(ImagesManager.hadithHeaderIm))),

                Card(
                  color: Colors.green[200],
                  elevation: 30,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8, horizontal: 100),
                    child: Text(
                      AppLocalizations.of(context)!.hadith, style: Theme
                        .of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontWeight: FontWeight.w600),),
                  ),
                ),


                Expanded(flex: 2,
                  child: ListView.separated(

                    separatorBuilder: (context, index) =>
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          // color: Theme.of(context).dividerColor,
                          height: 2,
                        ),
                    itemBuilder: (context, index) =>
                        Card(child: HadithTitleWidget(hadithItem: hadithProvider
                            .allHadithList[index])),
                    itemCount: hadithProvider.allHadithList.length,
                  ),
                )
              ],
            ),
          );
        }
    )
    );
  }


}

class HadithItem {
  String title;
  String content;

  HadithItem({required this.title, required this.content});
}