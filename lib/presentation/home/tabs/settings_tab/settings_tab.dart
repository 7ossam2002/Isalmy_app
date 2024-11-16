import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy/core/utilis/colors_manager.dart';
import 'package:islamy/presentation/home/tabs/settings_tab/widgets/show_language_bottomsheet.dart';
import 'package:islamy/presentation/home/tabs/settings_tab/widgets/theme_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:provider/provider.dart';

import '../../../../provider/lang_provider.dart';
import '../../../../provider/theme_provider.dart';



class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var themeProvider= Provider.of<ThemeProvider>(context);
    var langProvider= Provider.of<LangProvider>(context);

    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 29,horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(AppLocalizations.of(context)!.theme,style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize:14 ),),

            SizedBox(height:4,),

            InkWell(
              onTap: (){
                showModalBottomSheet(context: context, builder: (context) =>ThemeBottomSheet()
                );
              },
              child: Container(

              decoration: BoxDecoration(
              border: Border.all(color: ColorsManager.yellowColor,width: 2),
              borderRadius: BorderRadius.circular(12),
              ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(themeProvider.isLightTheme()? AppLocalizations.of(context)!.light:AppLocalizations.of(context)!.dark,style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500)),
                ),
              ),
            ),

             SizedBox(height: 15,),

            Text(AppLocalizations.of(context)!.language,style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize:14 ,)),

            SizedBox(height: 4,),

            InkWell(
              onTap: (){
                showModalBottomSheet(context: context, builder: (context) => ShowLanguageBottomsheet(),);
              },
              child: Container(

                decoration: BoxDecoration(
                  border: Border.all(color: ColorsManager.yellowColor,width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding:  EdgeInsets.all(14.0),
                  child: Text(langProvider.isEnglish()? AppLocalizations.of(context)!.english:AppLocalizations.of(context)!.arabic,style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500,)),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}

