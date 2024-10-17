import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../../../provider/settings_provider.dart';

class ShowLanguageBottomsheet extends StatefulWidget {
  const ShowLanguageBottomsheet({super.key});

  @override
  State<ShowLanguageBottomsheet> createState() => _ShowLanguageBottomsheetState();
}

class _ShowLanguageBottomsheetState extends State<ShowLanguageBottomsheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // English Language Option
            InkWell(
              onTap: () {
                provider.changeAppLang('en');
              },
              // If English is selected, show it as selected; otherwise, unselected
              child: provider.englishIsSelected()
                  ? buildSelectedLanguage(AppLocalizations.of(context)!.english)
                  : buildUnSelectedLanguage(AppLocalizations.of(context)!.english),
            ),

            SizedBox(height: 20,),

            // Arabic Language Option
            InkWell(
              onTap: () {
                provider.changeAppLang('ar');
              },
              // If Arabic is selected, show it as selected; otherwise, unselected
              child: provider.arabicIsSelected()
                  ? buildSelectedLanguage(AppLocalizations.of(context)!.arabic)
                  : buildUnSelectedLanguage(AppLocalizations.of(context)!.arabic),
            ),
          ],
        ),
      ),
    );
  }

  // Method for building the selected language widget
  Widget buildSelectedLanguage(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: Theme.of(context).textTheme.labelLarge),
        Icon(Icons.check, size: 30),
      ],
    );
  }

  // Method for building the unselected language widget
  Widget buildUnSelectedLanguage(String text) {
    return Row(
      children: [
        Text(text, style: Theme.of(context).textTheme.displayMedium),
      ],
    );
  }
}
