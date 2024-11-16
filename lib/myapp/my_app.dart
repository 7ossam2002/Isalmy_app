import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamy/config/theme/theme_screen.dart';
import 'package:islamy/core/utilis/routes_manager.dart';
import 'package:islamy/presentation/home/home_screen.dart';
import 'package:islamy/presentation/home/tabs/hadith_tab/hadith_details/hadith_details.dart';
import 'package:islamy/presentation/home/tabs/quran_tab/quran_details/quran_details_scr.dart';
import 'package:islamy/presentation/splash/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/provider/settings_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context,listen: true);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: Locale(provider.currentLan),
      debugShowCheckedModeBanner: false,

      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: provider.currentTheme,
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
