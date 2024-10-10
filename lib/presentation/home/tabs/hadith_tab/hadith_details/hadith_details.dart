import 'package:flutter/material.dart';
import 'package:islamy/presentation/home/tabs/hadith_tab/hadith_tab.dart';

import '../../../../../config/theme/theme_screen.dart';
import '../../../../../core/utilis/images_manager.dart';

class HadithDetails extends StatelessWidget {
  const HadithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    HadithItem hadith =ModalRoute.of(context)?.settings.arguments as HadithItem;();
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(MyTheme.isDarkEnabled?ImagesManager.darkBg: ImagesManager.homeBgImage)),
      ),
      child: Scaffold(
      appBar: AppBar(
        title: Text(hadith.title),
      ),
        body: SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Card(

                  elevation: 10,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(15),

                      child: Text(
                        hadith.content,style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 22),textAlign: TextAlign.center,textDirection: TextDirection.rtl,)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
