import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/provider/settings_provider.dart';
import 'package:provider/provider.dart';

import '../../../../../provider/lang_provider.dart';
import '../../../../../provider/theme_provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var themeProvider= Provider.of<ThemeProvider>(context);
    var langProvider= Provider.of<LangProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Light Theme Option
            InkWell(
              onTap: () {
                themeProvider.updateThemeMode(ThemeMode.light);
              },
              child: themeProvider.isLightTheme()
                  ? buildSelectedThemeItem(AppLocalizations.of(context)!.light)
                  : buildUnSelectedThemeItem(AppLocalizations.of(context)!.light),
            ),
            SizedBox(height: 20),

            // Dark Theme Option
            InkWell(
              onTap: () {
                themeProvider.updateThemeMode(ThemeMode.dark);
              },
              child: !(themeProvider.isLightTheme())
                  ? buildSelectedThemeItem(AppLocalizations.of(context)!.dark)
                  : buildUnSelectedThemeItem(AppLocalizations.of(context)!.dark),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSelectedThemeItem(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Icon(Icons.check, size: 30),
      ],
    );
  }

  Widget buildUnSelectedThemeItem(String text) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ],
    );
  }
}
