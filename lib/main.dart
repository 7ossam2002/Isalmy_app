import 'package:flutter/material.dart';
import 'package:islamy/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import 'myapp/my_app.dart';

void main() {
  runApp( ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
  child: MyApp()));
}


