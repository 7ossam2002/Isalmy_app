import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
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
            // Light Theme Option
            InkWell(
              onTap: () {
                provider.changeAppTheme(ThemeMode.light);
              },
              child: provider.currentTheme == ThemeMode.light
                  ? buildSelectedThemeItem(AppLocalizations.of(context)!.light)
                  : buildUnSelectedThemeItem(AppLocalizations.of(context)!.light),
            ),
            SizedBox(height: 20),

            // Dark Theme Option
            InkWell(
              onTap: () {
                provider.changeAppTheme(ThemeMode.dark);
              },
              child: provider.currentTheme == ThemeMode.dark
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
