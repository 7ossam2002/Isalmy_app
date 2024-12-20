import 'package:flutter/material.dart';
import 'package:islamy/presentation/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:provider/provider.dart';
import '../../../../../provider/lang_provider.dart';
import '../../../../../provider/settings_provider.dart';
import '../../../../../provider/theme_provider.dart';

class HadithDetails extends StatelessWidget {
  const HadithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider= Provider.of<ThemeProvider>(context);
    var langProvider= Provider.of<LangProvider>(context);
    HadithItem hadith =ModalRoute.of(context)?.settings.arguments as HadithItem;();
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(themeProvider.getBackgroundImage())),
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
