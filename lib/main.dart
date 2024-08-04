import 'package:flutter/material.dart';
import 'package:realstate/thems/my_them.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:realstate/view/screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ٌالمحترف للعقارات',
        theme: MyTheme.themeData(context: context),
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
            splashIconSize: MediaQuery.of(context).size.width * 0.8,
            duration: 3000,
            splash: Image.asset("asset/images/Artboard.png"),
            nextScreen: const Login(),
            curve: Curves.linear,
            splashTransition: SplashTransition.scaleTransition,
            backgroundColor: const Color(0xf0d0dae6)));
  }
}