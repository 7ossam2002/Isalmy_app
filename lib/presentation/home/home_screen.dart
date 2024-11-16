import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:islamy/core/utilis/images_manager.dart';
import 'package:islamy/presentation/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:islamy/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:islamy/presentation/home/tabs/radio_tab/radio_tab.dart';
import 'package:islamy/presentation/home/tabs/settings_tab/settings_tab.dart';
import 'package:islamy/presentation/home/tabs/tasbeh_tab/tasbeh_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../provider/settings_provider.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    SettingsTab(),
    RadioTab(),
    TasbehTab(),
    HadithTab(),
    QuranTab(),
  ];

  int _pageIndex = 4; // Track the current selected index

  // Function to determine icon color based on the selected page and current theme
  Color? _getIconColor(int index, BuildContext context) {
    return _pageIndex == index
        ? Theme
        .of(context)
        .primaryColor // Use theme's icon color for selected
        : Theme
        .of(context)
        .primaryColorDark; // Unselected icon color from theme
  }

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(provider.getBackgroundImage())),
      ),
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appTitle),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Theme
              .of(context)
              .primaryColor,
          // Use theme primary color
          height: 70,
          buttonBackgroundColor: Theme
              .of(context)
              .primaryColorDark,
          // Use theme primary color for button
          index: _pageIndex,

          items: [
            // Settings Icon
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: Column(
                children: [
                  Icon(Icons.settings, size: 35,
                      color: _getIconColor(0, context)),
                  Text(
                    AppLocalizations.of(context)!.settingsTap,
                    style: TextStyle(
                        color: _getIconColor(0, context),
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                ],
              ),
            ),

            // Radio Icon
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 3, left: 3, right: 3, top: 3),
                    child: ImageIcon(
                      AssetImage(ImagesManager.radioic),
                      size: 40,
                      color: _getIconColor(1, context),

                    ),
                  ),
                  Text(
                    AppLocalizations.of(context)!.radioTap,
                    style: TextStyle(
                        color: _getIconColor(1, context),
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                ],
              ),
            ),

            // Sebha Icon
            Padding(
              padding: const EdgeInsets.only(top: 6, bottom: 4),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 3, left: 3, right: 3),
                    child: ImageIcon(
                      AssetImage(ImagesManager.tasbehic),
                      size: 40,
                      color: _getIconColor(2, context),
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context)!.tasbehTap,
                    style: TextStyle(
                        color: _getIconColor(2, context),
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                ],
              ),
            ),

            // Hadith Icon
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 3, left: 3, right: 3),
                    child: ImageIcon(
                      AssetImage(ImagesManager.hadithic),
                      size: 40,
                      color: _getIconColor(3, context),
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context)!.hadithTap,
                    style: TextStyle(
                        color: _getIconColor(3, context),
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6, left: 3, right: 3),
                    child: ImageIcon(
                      AssetImage(ImagesManager.quranic),
                      size: 40,
                      color: _getIconColor(4, context),
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context)!.quranTap,
                    style: TextStyle(
                        color: _getIconColor(4, context),
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                ],
              ),
            ),
            // Quran Icon
          ],

          animationDuration: Duration(milliseconds: 200),
          onTap: (index) {
            setState(() {
              _pageIndex = index;
            });
          },
        ),
        body: tabs[_pageIndex],
      ),
    );
  }
}