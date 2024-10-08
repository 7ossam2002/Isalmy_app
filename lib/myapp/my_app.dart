import 'package:flutter/material.dart';
import 'package:islamy/config/theme/theme_screen.dart';
import 'package:islamy/core/utilis/routes_manager.dart';
import 'package:islamy/presentation/home/home_screen.dart';
import 'package:islamy/presentation/home/tabs/hadith_tab/hadith_details/hadith_details.dart';
import 'package:islamy/presentation/home/tabs/quran_tab/quran_details/quran_details_scr.dart';
import 'package:islamy/presentation/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: MyTheme.lightTheme,
      initialRoute: RoutesManager.splashRoute,
      routes: {
        RoutesManager.homeRoute:(context)=>HomeScreen(),
        RoutesManager.splashRoute:(context)=>SplashScreen(),
        RoutesManager.quranDetailsRoute:(context)=>QuranDetailsScr(),
        RoutesManager.hadithDetailsRout:(context)=> HadithDetails(),

      },

    );

  }

}
