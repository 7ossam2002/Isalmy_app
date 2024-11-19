import 'package:flutter/material.dart';
import 'package:islamy/provider/lang_provider.dart';
import 'package:islamy/provider/tasbeh_provider.dart';
import 'package:islamy/provider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'myapp/my_app.dart';

void main() {
  runApp( MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()..getTheme(),),
        ChangeNotifierProvider(create: (context) => LangProvider()..getLang(),),
        ChangeNotifierProvider(create: (context) => TasbehProvider(),)
      ],
      child: MyApp()));
}


