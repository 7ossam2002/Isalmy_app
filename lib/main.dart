import 'package:flutter/material.dart';
import 'package:islamy/provider/lang_provider.dart';
import 'package:islamy/provider/tasbeh_provider.dart';
import 'package:islamy/provider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'myapp/my_app.dart';

void main() {
  runApp( MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider(),),
        ChangeNotifierProvider(create: (context) => LangProvider(),),
        ChangeNotifierProvider(create: (context) => TasbehProvider(),)
      ],
      child: MyApp()));
}


