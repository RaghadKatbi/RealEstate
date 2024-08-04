import 'package:flutter/material.dart';

class MyTheme{
  static ThemeData themeData({required BuildContext context})
  {
    return ThemeData(
      scaffoldBackgroundColor: Colors.grey[50],
      primarySwatch: Colors.blue,
      primaryColorDark: const Color(0xff657c94),
      dividerColor: Colors.black,
      disabledColor: Colors.grey,
      cardColor: Colors.grey[50],
      canvasColor: Colors.white,
      brightness: Brightness.light,
      buttonTheme: ButtonTheme.of(context).copyWith(colorScheme: const ColorScheme.light()),
     // iconTheme: const IconThemeData(color: Colors.red),
    );
  }
}