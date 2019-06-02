import 'dart:ui';

import 'package:flutter/material.dart';

// theme
final Color jet = Color(0xFF333333);
final Color white = Colors.white;
final Color ghost = Color(0xFFF7F7FF);
final Color cadet = Color(0xFF8E9AAF);
final Color glitter = Color(0xFFE7ECEF);
final Color primary = Colors.blue[50];

final Color backgroundColor = jet;
final Color gray1 = ghost.withOpacity(0.9);
final Color gray2 = ghost.withOpacity(0.8);
final Color gray3 = cadet.withOpacity(0.1);

final Color buttonColor = Color(0xFF8EB8D1);

final ThemeData appTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: primary,
  accentColor: cadet,
  textTheme: TextTheme(
    headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: buttonColor,
    foregroundColor: jet
  ),
  cardTheme: CardTheme(
    clipBehavior: Clip.antiAlias,
    elevation: 3.0,
    margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
    shape:BeveledRectangleBorder(),
    color: ghost
  ),
  appBarTheme: AppBarTheme(
    color: jet,
    brightness: Brightness.dark,
    textTheme: TextTheme(
      title: TextStyle(
        color: ghost,
        fontSize: 20,
      ),
    ),
    iconTheme: IconThemeData(
      color: ghost
    )
  )
);
