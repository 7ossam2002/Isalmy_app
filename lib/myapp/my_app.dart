import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamy/config/theme/theme_screen.dart';
import 'package:islamy/core/utilis/routes_manager.dart';
import 'package:islamy/presentation/home/home_screen.dart';
import 'package:islamy/presentation/home/tabs/hadith_tab/hadith_details/hadith_details.dart';
import 'package:islamy/presentation/home/tabs/quran_tab/quran_details/quran_details_scr.dart';
import 'package:islamy/presentation/home/tabs/tasbeh_tab/tasbeh_tab.dart';
import 'package:islamy/presentation/splash/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/provider/lang_provider.dart';
import 'package:islamy/provider/quran_provider.dart';
import 'package:islamy/provider/tasbeh_provider.dart';
import 'package:islamy/provider/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    var themeProvider= Provider.of<ThemeProvider>(context);
    var langProvider= Provider.of<LangProvider>(context);
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
      locale: Locale(langProvider.currentLang),
      debugShowCheckedModeBanner: false,

      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: themeProvider.currentTheme,
      initialRoute: RoutesManager.splashRoute,
      routes: {
        RoutesManager.homeRoute:(context)=>HomeScreen(),
        RoutesManager.splashRoute:(context)=>SplashScreen(),
        RoutesManager.quranDetailsRoute:(context)=>ChangeNotifierProvider(
            create: (context) => QuranProvider(),
            child: QuranDetailsScr()),
        RoutesManager.hadithDetailsRout:(context)=> HadithDetails(),
        RoutesManager.tasbehDetailsRout:(context)=> ChangeNotifierProvider(
            create: (context) => TasbehProvider(),

            child: TasbehTab()),

      },

    );

  }

}
