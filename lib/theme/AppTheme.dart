import 'dart:ui';

import 'package:flutter/material.dart';

class AppTheme {
  static const Color bgGrey = Color.fromARGB(0xEC, 0xEC, 0xEC, 0xEC);
  static const Color accent = Color.fromARGB(255, 00, 0x9a, 0x3d);

  ThemeData getAppTheme(BuildContext context) {
    return ThemeData(
      primaryColor: Colors.white,
      backgroundColor: bgGrey,
      accentColor: accent,
      primaryColorDark: Color.fromARGB(255, 0x11, 0x3c, 0x2b),
      scaffoldBackgroundColor: bgGrey,
      fontFamily: 'Bimby',
      textTheme: Theme.of(context).textTheme.copyWith(
          headline4: TextStyle(
              fontFamily: 'Bimby',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black),
          headline5: TextStyle(
              fontFamily: 'Bimby',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black),
          subtitle1: TextStyle(
              fontFamily: 'Bimby',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: accent),
          subtitle2: TextStyle(
              fontFamily: 'Bimby',
              fontSize: 16,
              color: accent,
              fontWeight: FontWeight.bold),
          overline: TextStyle(fontFamily: 'Bimby')),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  TextStyle getAppBarFontStyle(BuildContext context) {
    return Theme.of(context).textTheme.headline4;
  }

  TextStyle getListTitleStyle(BuildContext context) {
    return Theme.of(context).textTheme.subtitle2;
  }

  TextStyle getMainInfoTextStyle(BuildContext context) {
    return Theme.of(context).textTheme.subtitle1;
  }

  TextStyle getBaseInfoTextStyle(BuildContext context) {
    return Theme.of(context).textTheme.headline5;
  }

  TextStyle getSmallTextStyle(BuildContext context){
    return Theme.of(context).textTheme.overline;

  }
}
