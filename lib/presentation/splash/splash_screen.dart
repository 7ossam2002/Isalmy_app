import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/utilis/images_manager.dart';
import '../../core/utilis/routes_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    Future.delayed(
        Duration(seconds: 3),(){
          Navigator.of(context).pushReplacementNamed(RoutesManager.homeRoute);
    }
    );
    return Scaffold(
      body: Image.asset(ImagesManager.lightSplashScreen,width: double.infinity,height: double.infinity,fit: BoxFit.cover,),
    );
  }
}
