
import 'package:flutter/material.dart';

import '../../core/utilis/colors_manager.dart';

class MyTheme{
  static final ThemeData lightTheme= ThemeData(
    
    colorScheme: ColorScheme.fromSeed(seedColor: ColorsManager.goldColor),
      primaryColor: ColorsManager.goldColor,
    
      appBarTheme:  const AppBarTheme(
        toolbarHeight: 90,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(fontSize: 28,fontWeight: FontWeight.w800,color: Colors.black),
        elevation: 0,
      ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.white,
      elevation: 20,
      margin: EdgeInsets.all(8),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme:  const BottomNavigationBarThemeData(
     // backgroundColor: Colors.transparent,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),

  textTheme: TextTheme(
    titleSmall: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w400,
      color: Colors.black
    ),
    bodySmall: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: Colors.black
    )
  ),
    dividerColor: Color(0xFFB7935F),
  );



  static final ThemeData darkTheme= ThemeData(

    colorScheme: ColorScheme.fromSeed(seedColor: ColorsManager.goldColor),
    primaryColor: const Color(0xFF141A2E),

    appBarTheme:  const AppBarTheme(
      toolbarHeight: 90,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(fontSize: 28,fontWeight: FontWeight.w800,color: Colors.black),
      elevation: 0,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme:  const BottomNavigationBarThemeData(
      // backgroundColor: Colors.transparent,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),


  );

}