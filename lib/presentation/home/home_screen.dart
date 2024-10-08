import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy/core/utilis/images_manager.dart';
import 'package:islamy/core/utilis/strings_manager.dart';
import 'package:islamy/presentation/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:islamy/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:islamy/presentation/home/tabs/radio_tab/radio_tab.dart';
import 'package:islamy/presentation/home/tabs/settings_tab/settings_tab.dart';
import 'package:islamy/presentation/home/tabs/tasbeh_tab/tasbeh_tab.dart';

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

  // Track the current selected index
  int _pageIndex = 4;

  // Function to determine icon color based on the selected page
  Color _getIconColor(int index) {
    return _pageIndex == index ? Colors.black : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(ImagesManager.homeBgImage)),
      ),
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(StringsManager.appTitle),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: const Color(0xFFB7935F), // Background color for the curved navbar
          buttonBackgroundColor: const Color(0xFFB7935F), // Active button color
          height: 60, // Height of the curved navbar
          index: _pageIndex, // Current selected index

          items: [

            Padding(
              padding: const EdgeInsets.only(top: 17),
              child: Column(
                children: [
                  Icon(Icons.settings, size: 35, color: _getIconColor(0)),
                  Text(
                    "Settings",
                    style: TextStyle(

                        color: _getIconColor(0),
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 3, left: 3, right: 3),
                    child: ImageIcon(
                      AssetImage(ImagesManager.radioic), // Use your image path
                      size: 40, // Increase the size of the image icon
                      color: _getIconColor(1), // Set the icon color based on selection
                    ),
                  ),
                  Text(
                    "Radio",
                    style: TextStyle(
                        color: _getIconColor(1),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 3, left: 3, right: 3),
                    child: ImageIcon(
                      AssetImage(ImagesManager.tasbehic), // Use your image path
                      size: 40,
                      color: _getIconColor(2),
                    ),
                  ),
                  Text(
                    "Sebha",
                    style: TextStyle(
                        color: _getIconColor(2),
                        fontWeight: FontWeight.bold),
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
                      AssetImage(ImagesManager.hadithic), // Use your image path
                      size: 40,
                      color: _getIconColor(3),
                    ),
                  ),
                  Text(
                    "Hadith",
                    style: TextStyle(
                        color: _getIconColor(3),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            // Quran Icon
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 3, left: 3, right: 3),
                    child: ImageIcon(
                      AssetImage(ImagesManager.quranic), // Use your image path
                      size: 40,
                      color: _getIconColor(4),
                    ),
                  ),
                  Text(
                    "Quran",
                    style: TextStyle(
                        color: _getIconColor(4),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],

          animationDuration: Duration(milliseconds: 200), // Control the speed (faster or slower)

          onTap: (index) {
            setState(() {
              _pageIndex = index; // Update the selected index when tapped
            });
          },
        ),

        // Example content based on selected index
        body: tabs[_pageIndex],
      ),
    );
  }
}
