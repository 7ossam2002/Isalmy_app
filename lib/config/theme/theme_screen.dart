
import 'package:flutter/material.dart';

import '../../core/utilis/colors_manager.dart';

class MyTheme{
  //static bool isDarkEnabled=false;
  static final ThemeData lightTheme= ThemeData(
    
    colorScheme: ColorScheme.fromSeed(seedColor: ColorsManager.goldColor),
      primaryColor: ColorsManager.goldColor,
    
      appBarTheme:  const AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
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
    iconTheme: const IconThemeData(
      color: ColorsManager.goldColor,
      size: 30,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme:  const BottomNavigationBarThemeData(
     // backgroundColor: Colors.transparent,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),
  focusColor: Colors.white,
  primaryColorDark: Colors.black,
  indicatorColor: Colors.white,

  textTheme:  TextTheme(

    labelMedium:TextStyle(color: Colors.black),


    displayMedium: TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.w700,
  ),


    titleSmall: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w400,
      color: Colors.black
    ),
    bodySmall: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    labelSmall: TextStyle(color: ColorsManager.yellowColor,fontSize: 16,fontWeight: FontWeight.w400),
    bodyMedium: TextStyle(color: ColorsManager.yellowColor,fontSize: 20,fontWeight: FontWeight.w700),
    bodyLarge: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black),
    displayLarge: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black),
    displaySmall: TextStyle(fontWeight:FontWeight.w700,fontSize: 20,color: Colors.black),
    labelLarge: TextStyle(fontWeight:FontWeight.w700,fontSize: 20,color: ColorsManager.goldColor),

  ),
    dividerColor: Color(0xFFB7935F),

    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      elevation: 18,
      backgroundColor: Colors.white,

    ),

    unselectedWidgetColor: Colors.white,
  );




















  static final ThemeData darkTheme= ThemeData(

    colorScheme: ColorScheme.fromSeed(seedColor: ColorsManager.darkBlue,onPrimary: Colors.yellow),
    primaryColor: ColorsManager.darkBlue,
indicatorColor: ColorsManager.darkBlue,
    primaryColorDark: ColorsManager.yellowColor,

    appBarTheme:  const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      toolbarHeight: 90,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(fontSize: 28,fontWeight: FontWeight.w800,color: Colors.white),
      elevation: 0,
    ),
    cardTheme: CardTheme(

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: ColorsManager.darkBlue,
      elevation: 20,
      margin: EdgeInsets.all(8),
    ),
    dividerColor: ColorsManager.yellowColor,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme:  const BottomNavigationBarThemeData(

      // backgroundColor: Colors.transparent,
      selectedItemColor: ColorsManager.yellowColor,
      unselectedItemColor: Colors.white,
    ),
      bottomSheetTheme: BottomSheetThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        elevation: 18,
        backgroundColor: ColorsManager.darkBlue,

      ),
    iconTheme: IconThemeData(
      color: ColorsManager.yellowColor,
      size: 30,
    ),

    textTheme:  TextTheme(
      labelMedium:TextStyle(color: ColorsManager.yellowColor) ,

        labelLarge: TextStyle(
            fontWeight:FontWeight.w700,
            fontSize: 20,
            color: ColorsManager.yellowColor),

      displaySmall: TextStyle(
          fontWeight:FontWeight.w700,
          fontSize: 25,
          color: ColorsManager.yellowColor),

      titleSmall: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: Colors.white
      ),
      bodySmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.white
      ),

      bodyLarge: TextStyle(
          fontSize: 20,fontWeight: FontWeight.w400,color: ColorsManager.yellowColor),
      bodyMedium: TextStyle(
          color: ColorsManager.goldColor,fontSize: 20,fontWeight: FontWeight.w700),

      displayMedium: TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
      displayLarge: TextStyle(
          fontSize: 20,fontWeight: FontWeight.w400,color: ColorsManager.goldColor),
    ),



    unselectedWidgetColor: Colors.white,

  );


}